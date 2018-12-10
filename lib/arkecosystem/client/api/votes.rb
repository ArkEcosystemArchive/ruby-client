require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # Methods for the Votes API
      class Votes < Base
        # Get all votes.
        #
        # @param parameters [Hash]
        #
        # @return [Faraday::Response]
        def all(parameters = {})
          @client.get('votes', parameters)
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
