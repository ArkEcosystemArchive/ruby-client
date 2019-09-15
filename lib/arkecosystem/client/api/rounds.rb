require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # Methods for the Rounds API
      class Rounds < Base
        # Get the forging delegates of a round by the given id.
        #
        # @param id [String]
        #
        # @return [Faraday::Response]
        def delegates(id)
          @client.get("rounds/#{id}/delegates")
        end
      end
    end
  end
end
