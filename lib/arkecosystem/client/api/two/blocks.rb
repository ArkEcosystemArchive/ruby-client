require 'arkecosystem/client/http/request'

module ArkEcosystem
  module Client
    class API
      # Methods for Version 2 of the API
      #
      # @see https://docs.ark.io/v1.0/reference#api-v2-blocks
      module Two
        # Methods for the Blocks API
        class Blocks
          include ArkEcosystem::Client::HTTP::Request

          # Create a new resource instance.
          #
          # @param host [String]
          #
          # @return [ArkEcosystem::Client::API::Two::Blocks]
          def initialize(host)
            @host = host
            @version = 2
          end

          # Get all blocks.
          #
          # @param parameters [String]
          #
          # @return [Faraday::Response]
          def list(parameters = {})
            get("blocks", parameters)
          end

          # Get the block by the given id.
          #
          # @param id [String]
          #
          # @return [Faraday::Response]
          def show(id)
            get("blocks/#{id}")
          end

          # Get the transaction  for the given block.
          #
          # @param id [String]
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def transactions(id, parameters = {})
            get("blocks/#{id}/transactions", parameters)
          end

          # Search all blocks.
          #
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def search(parameters)
            post("blocks/search", parameters)
          end
        end
      end
    end
  end
end
