require 'ark_client/http/request'

module ArkClient
  class Client
    # Methods for Version 2 of the API
    #
    # @see https://docs.ark.io/v1.0/reference#api-v2-node
    module Two
      # Methods for the Node API
      class Node
        include ArkClient::HTTP::Request

        # Create a new resource instance.
        #
        # @param host [String]
        #
        # @return [ArkClient::Client::Two::Node]
        def initialize(host)
          @host = host
          @version = 2
        end

        # Get the loader status.
        #
        # @return [Faraday::Response]
        def status
          get("node/status")
        end

        # Get the loader syncing status.
        #
        # @return [Faraday::Response]
        def syncing
          get("node/syncing")
        end

        # Get the loader configuration.
        #
        # @return [Faraday::Response]
        def configuration
          get("node/configuration")
        end
      end
    end
  end
end
