require 'arkecosystem/client/http/request'

module ArkEcosystem
  module Client
    class API
      # Methods for Version 1 of the API
      #
      # @see https://docs.ark.io/v1.0/reference#api-v1-loader
      module One
        # Methods for the Loader API
        class Loader
          include ArkEcosystem::Client::HTTP::Request

          # Create a new resource instance.
          #
          # @param host [String]
          #
          # @return [ArkEcosystem::Client::API::One::Loader]
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
end
