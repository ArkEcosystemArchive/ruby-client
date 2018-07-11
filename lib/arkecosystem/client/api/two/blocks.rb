require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # Methods for Version 2 of the API
      #
      # @see https://docs.ark.io/v1.0/reference#api-v2-blocks
      module Two
        # Methods for the Blocks API
        class Blocks < Base
          # Get all blocks.
          #
          # @param parameters [String]
          #
          # @return [Faraday::Response]
          def all(parameters = {})
            @client.get('blocks', parameters)
          end

          # Get the block by the given id.
          #
          # @param id [String]
          #
          # @return [Faraday::Response]
          def show(id)
            @client.get("blocks/#{id}")
          end

          # Get the transaction  for the given block.
          #
          # @param id [String]
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def transactions(id, parameters = {})
            @client.get("blocks/#{id}/transactions", parameters)
          end

          # Search all blocks.
          #
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def search(parameters)
            @client.post('blocks/search', parameters)
          end
        end
      end
    end
  end
end
