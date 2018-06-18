module ArkClient
  class Client
    module Two
      # Methods for the Node API
      module Node
        class << self
          # Short description of what this function does.
          #
          # @return [Hash]
          def status
            get("node/status")
          end

          # Short description of what this function does.
          #
          # @return [Hash]
          def syncing
            get("node/syncing")
          end

          # Short description of what this function does.
          #
          # @return [Hash]
          def configuration
            get("node/configuration")
          end
        end
      end
    end
  end
end
