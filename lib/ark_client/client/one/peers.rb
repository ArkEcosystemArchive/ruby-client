require 'ark_client/http/request'

module ArkClient
  class Client
    # Methods for Version 1 of the API
    #
    # @see https://docs.ark.io/v1.0/reference#api-v1-peers
    module One
      # Methods for the Peers API
      class Peers
        include ArkClient::HTTP::Request

        # Create a new resource instance.
        #
        # @param host [String]
        #
        # @return [ArkClient::Client::Peers::Accounts]
        def initialize(host)
          @host = host
          @version = 1
        end

        # Get all peers.
        #
        # @param parameters [Hash]
        #
        # @return [Faraday::Response]
        def list(parameters = {})
          get('peers', parameters)
        end

        # Get the peer by the given ip and port.
        #
        # @param ip [String]
        # @param port [Integer]
        #
        # @return [Faraday::Response]
        def show(ip, port)
          get('peers/get', {:ip => ip, :port => port})
        end

        # Get the node version of the peer.
        #
        # @return [Faraday::Response]
        def version
          get('peers/version')
        end
      end
    end
  end
end
