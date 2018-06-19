require 'ark_client/http/request'

module ArkClient
  class Client
    # Methods for Version 1 of the API
    #
    # @see https://docs.ark.io/v1.0/reference#api-v1-transactions
    module One
      # Methods for the Transactions API
      class Transactions
        include ArkClient::HTTP::Request

        # Create a new resource instance.
        #
        # @param host [String]
        #
        # @return [ArkClient::Client::One::Transactions]
        def initialize(host)
          @host = host
          @version = 1
        end

        # Get all transactions.
        #
        # @param parameters [Hash]
        #
        # @return [Hash]
        def transactions(parameters = {})
          get('transactions', parameters)
        end

        # Get the transaction by the given id.
        #
        # @param id [String]
        #
        # @return [Hash]
        def transaction(id)
          get('transactions/get', {:id => id})
        end

        # Get all unconfirmed transactions.
        #
        # @param parameters [Hash]
        #
        # @return [Hash]
        def unconfirmed_transactions(parameters = {})
          get('transactions/unconfirmed', parameters)
        end

        # Get the unconfirmed transaction by the given id.
        #
        # @param id [String]
        #
        # @return [Hash]
        def unconfirmed_transaction(id)
          get('transactions/unconfirmed/get', {:id => id})
        end
      end
    end
  end
end
