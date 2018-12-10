require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # Methods for the Transactions API
      class Transactions < Base
        # Get all transactions.
        #
        # @param parameters [Hash]
        #
        # @return [Faraday::Response]
        def all(parameters = {})
          @client.get('transactions', parameters)
        end

        # Create new transactions.
        #
        # @param parameters [Hash]
        #
        # @return [Faraday::Response]
        def create(parameters)
          @client.post('transactions', parameters)
        end

        # Get the transaction by the given id.
        #
        # @param id [String]
        #
        # @return [Faraday::Response]
        def show(id)
          @client.get("transactions/#{id}")
        end

        # Get all unconfirmed transactions.
        #
        # @param parameters [Hash]
        #
        # @return [Faraday::Response]
        def all_unconfirmed(parameters = {})
          @client.get('transactions/unconfirmed', parameters)
        end

        # Get the unconfirmed transaction by the given id.
        #
        # @param id [String]
        #
        # @return [Faraday::Response]
        def show_unconfirmed(id)
          @client.get("transactions/unconfirmed/#{id}")
        end

        # Search all transactions.
        #
        # @param parameters [Hash]
        #
        # @return [Faraday::Response]
        def search(parameters)
          @client.post('transactions/search', parameters)
        end

        # Get a list of all transaction types.
        #
        # @return [Faraday::Response]
        def types
          @client.get('transactions/types')
        end
      end
    end
  end
end
