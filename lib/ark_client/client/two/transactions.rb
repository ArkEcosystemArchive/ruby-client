require 'ark_client/http/request'

module ArkClient
  class Client
    # Methods for Version 2 of the API
    #
    # @see https://docs.ark.io/v1.0/reference#api-v2-transactions
    module Two
      # Methods for the Transactions API
      class Transactions
        include ArkClient::HTTP::Request

        # Create a new resource instance.
        #
        # @param host [String]
        #
        # @return [ArkClient::Client::Two::Transactions]
        def initialize(host)
          @host = host
          @version = 2
        end

        # Get all transactions.
        #
        # @param parameters [Hash]
        #
        # @return [Hash]
        def list(parameters = {})
          get("transactions", parameters)
        end

        # Create new transactions.
        #
        # @param parameters [Hash]
        #
        # @return [Hash]
        def create(parameters)
          post("transactions", parameters)
        end

        # Get the transaction by the given id.
        #
        # @param id [String]
        #
        # @return [Hash]
        def show(id)
          get("transactions/#{id}")
        end

        # Get all unconfirmed transactions.
        #
        # @param parameters [Hash]
        #
        # @return [Hash]
        def list_unconfirmed(parameters = {})
          get("transactions/unconfirmed", parameters)
        end

        # Get the unconfirmed transaction by the given id.
        #
        # @param id [String]
        #
        # @return [Hash]
        def get_unconfirmed(id)
          get("transactions/unconfirmed/#{id}")
        end

        # Search all transactions.
        #
        # @param parameters [Hash]
        #
        # @return [Hash]
        def search(parameters)
          post("transactions/search", parameters)
        end

        # Get a list of all transaction types.
        #
        # @return [Hash]
        def types
          get("transactions/types")
        end
      end
    end
  end
end
