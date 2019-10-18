require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # Methods for the Businesses API
      class Businesses < Base
        # Get all businesses.
        #
        # @param parameters [String]
        #
        # @return [Faraday::Response]
        def all(parameters = {})
          @client.get('businesses', parameters)
        end

        # Get the business by the given id.
        #
        # @param id [String]
        #
        # @return [Faraday::Response]
        def show(id)
          @client.get("businesses/#{id}")
        end

        # Get the bridgechains for the given business.
        #
        # @param id [String]
        # @param parameters [Hash]
        #
        # @return [Faraday::Response]
        def transactions(id, parameters = {})
          @client.get("businesses/#{id}/bridgechains", parameters)
        end

        # Search all businesses.
        #
        # @param parameters [Hash]
        #
        # @return [Faraday::Response]
        def search(parameters)
          @client.post('businesses/search', parameters)
        end
      end
    end
  end
end
