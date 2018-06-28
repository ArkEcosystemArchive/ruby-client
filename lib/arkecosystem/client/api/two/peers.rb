require 'arkecosystem/client/http/request'

module ArkEcosystem
  module Client
    class API
      # Methods for Version 2 of the API
      #
      # @see https://docs.ark.io/v1.0/reference#api-v2-peers
      module Two
        # Methods for the Peers API
        class Peers
          include ArkEcosystem::Client::HTTP::Request

          # Create a new resource instance.
          #
          # @param host [String]
          #
          # @return [ArkEcosystem::Client::API::Two::Peers]
          def initialize(host)
            @host = host
            @version = 2
          end

          # Get all peers.
          #
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def list(parameters = {})
            get("peers", parameters)
          end

          # Get the peer by the given ip.
          #
          # @param ip [String]
          #
          # @return [Faraday::Response]
          def show(ip)
            get("peers/#{ip}")
          end
        end
      end
    end
  end
end
