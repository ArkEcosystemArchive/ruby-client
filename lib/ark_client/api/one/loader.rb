require 'ark_client/http/request'

module ArkClient
  class API
    # Methods for Version 1 of the API
    #
    # @see https://docs.ark.io/v1.0/reference#api-v1-loader
    module One
      # Methods for the Loader API
      class Loader
        include ArkClient::HTTP::Request

        # Create a new resource instance.
        #
        # @param host [String]
        #
        # @return [ArkClient::Client::One::Loader]
        def initialize(host)
          @host = host
          @version = 1
        end

        # Get the loader status.
        #
        # @return [Faraday::Response]
        def status
          get('loader/status')
        end

        # Get the loader syncing status.
        #
        # @return [Faraday::Response]
        def sync
          get('loader/status/sync')
        end

        # Get the loader configuration.
        #
        # @return [Faraday::Response]
        def autoconfigure
          get('loader/autoconfigure')
        end
      end
    end
  end
end
