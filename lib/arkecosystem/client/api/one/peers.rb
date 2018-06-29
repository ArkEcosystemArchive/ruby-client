require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # Methods for Version 1 of the API
      #
      # @see https://docs.ark.io/v1.0/reference#api-v1-peers
      module One
        # Methods for the Peers API
        class Peers < Base
          # Get all peers.
          #
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def all(parameters = {})
            @client.get('peers', parameters)
          end

          # Get the peer by the given ip and port.
          #
          # @param ip [String]
          # @param port [Integer]
          #
          # @return [Faraday::Response]
          def show(ip, port)
            @client.get('peers/get', { ip: ip, port: port })
          end

          # Get the node version of the peer.
          #
          # @return [Faraday::Response]
          def version
            @client.get('peers/version')
          end
        end
      end
    end
  end
end
