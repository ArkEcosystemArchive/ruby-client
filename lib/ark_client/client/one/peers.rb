module ArkClient
  class Client
    module One
      # Methods for the Peers API
      module Peers
        class << self
          # Short description of what this function does.
          #
          # @param ip [String]
          # @param port [Integer]
          #
          # @return [Hash]
          def peer(ip, port)
            get('peers/get', {:ip => ip, :port => port})
          end

          # Short description of what this function does.
          #
          # @param parameters [Hash]
          #
          # @return [Hash]
          def peers(parameters = {})
            get('peers', parameters)
          end

          # Short description of what this function does.
          #
          # @return [Hash]
          def version
            get('peers/version')
          end
        end
      end
    end
  end
end
