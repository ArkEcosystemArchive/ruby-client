module ArkClient
  class Client
    # Methods for Version 2 of the API
    #
    # @see https://docs.ark.io/v1.0/reference#api-v2-node
    module Two
      # Methods for the Node API
      module Node
        class << self
          # Get the loader status.
          #
          # @return [Hash]
          def status
            get("node/status")
          end

          # Get the loader syncing status.
          #
          # @return [Hash]
          def syncing
            get("node/syncing")
          end

          # Get the loader configuration.
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
