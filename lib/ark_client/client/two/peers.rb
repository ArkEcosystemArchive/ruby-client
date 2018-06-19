module ArkClient
  class Client
    # Methods for Version 2 of the API
    #
    # @see https://docs.ark.io/v1.0/reference#api-v2-peers
    module Two
      # Methods for the Peers API
      module Peers
        class << self
          # Get all peers.
          #
          # @param parameters [Hash]
          #
          # @return [Hash]
          def list(parameters = {})
            get("peers", parameters)
          end

          # Get the peer by the given ip.
          #
          # @param ip [String]
          #
          # @return [Hash]
          def show(ip)
            get("peers/#{ip}")
          end
        end
      end
    end
  end
end
