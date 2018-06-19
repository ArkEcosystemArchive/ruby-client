module ArkClient
  class Client
    # Methods for Version 2 of the API
    #
    # @see https://docs.ark.io/v1.0/reference#api-v2-blocks
    module Two
      # Methods for the Blocks API
      module Blocks
        class << self
          # Get all blocks.
          #
          # @param parameters [String]
          #
          # @return [Hash]
          def list(parameters = {})
            get("blocks", parameters)
          end

          # Get the block by the given id.
          #
          # @param id [String]
          #
          # @return [Hash]
          def show(id)
            get("blocks/#{id}")
          end

          # Get the transaction  for the given block.
          #
          # @param id [String]
          # @param parameters [Hash]
          #
          # @return [Hash]
          def transactions(id, parameters = {})
            get("blocks/#{id}/transactions", parameters)
          end

          # Search all blocks.
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
