require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # Methods for the Locks API
      class Locks < Base
        # Get all locks.
        #
        # @param parameters [String]
        #
        # @return [Faraday::Response]
        def all(parameters = {})
          @client.get('locks', parameters)
        end

        # Get the lock by the given id.
        #
        # @param id [String]
        #
        # @return [Faraday::Response]
        def show(id)
          @client.get("locks/#{id}")
        end

        # Search all locks.
        #
        # @param parameters [Hash]
        #
        # @return [Faraday::Response]
        def search(parameters)
          @client.post('locks/search', parameters)
        end

        # Search all unlocked locks.
        #
        # @param parameters [Hash]
        #
        # @return [Faraday::Response]
        def unlocked(parameters)
          @client.post('locks/unlocked', parameters)
        end
      end
    end
  end
end
