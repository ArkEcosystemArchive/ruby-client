require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # Methods for Version 2 of the API
      #
      # @see https://docs.ark.io/v1.0/reference#api-v2-delegates
      module Two
        # Methods for the Delegates API
        class Delegates < Base
          # Get all delegates.
          #
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def all(parameters = {})
            @client.get('delegates', parameters)
          end

          # Get the delegate by the given id.
          #
          # @param id [String]
          #
          # @return [Faraday::Response]
          def show(id)
            @client.get("delegates/#{id}")
          end

          # Get the blocks for the given delegate.
          #
          # @param id [String]
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def blocks(id, parameters = {})
            @client.get("delegates/#{id}/blocks", parameters)
          end

          # Get the votes for the given delegate.
          #
          # @param id [String]
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def voters(id, parameters = {})
            @client.get("delegates/#{id}/voters", parameters)
          end
        end
      end
    end
  end
end
