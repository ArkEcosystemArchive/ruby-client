require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # Methods for Version 2 of the API
      #
      # @see https://docs.ark.io/v1.0/reference#api-v2-votes
      module Two
        # Methods for the Votes API
        class Votes < Base
          # Get all votes.
          #
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def list(parameters = {})
            @client.get("votes", parameters)
          end

          # Get the vote by the given id.
          #
          # @param id [String]
          #
          # @return [Faraday::Response]
          def show(id)
            @client.get("votes/#{id}")
          end
        end
      end
    end
  end
end
