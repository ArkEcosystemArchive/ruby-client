require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # Methods for the Bridgechains API
      class Bridgechains < Base
        # Get all bridgechains.
        #
        # @param parameters [String]
        #
        # @return [Faraday::Response]
        def all(parameters = {})
          @client.get('bridgechains', parameters)
        end

        # Get the bridgechain by the given id.
        #
        # @param id [String]
        #
        # @return [Faraday::Response]
        def show(id)
          @client.get("bridgechains/#{id}")
        end

        # Search all bridgechains.
        #
        # @param parameters [Hash]
        #
        # @return [Faraday::Response]
        def search(parameters)
          @client.post('bridgechains/search', parameters)
        end
      end
    end
  end
end
