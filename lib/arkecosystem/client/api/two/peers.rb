require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # Methods for Version 2 of the API
      #
      # @see https://docs.ark.io/v1.0/reference#api-v2-peers
      module Two
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

          # Get the peer by the given ip.
          #
          # @param ip_addr [String]
          #
          # @return [Faraday::Response]
          def show(ip_addr)
            @client.get("peers/#{ip_addr}")
          end
        end
      end
    end
  end
end
