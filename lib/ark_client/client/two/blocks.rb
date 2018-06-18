module ArkClient
  class Client
    module Two
      # Methods for the Blocks API
      module Blocks
        class << self
          # Short description of what this function does.
          #
          # @param parameters [String]
          #
          # @return [Hash]
          def list(parameters = {})
            get("blocks", parameters)
          end

          # Short description of what this function does.
          #
          # @param id [String]
          #
          # @return [Hash]
          def get(id)
            get("blocks/#{id}")
          end

          # Short description of what this function does.
          #
          # @param id [String]
          # @param parameters [Hash]
          #
          # @return [Hash]
          def transactions(id, parameters = {})
            get("blocks/#{id}/transactions", parameters)
          end

          # Short description of what this function does.
          #
          # @param parameters [Hash]
          #
          # @return [Hash]
          def search(parameters)
            post("blocks/search", parameters)
          end
        end
      end
    end
  end
end
