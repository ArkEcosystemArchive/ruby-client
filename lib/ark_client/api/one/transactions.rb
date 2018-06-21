require 'ark_client/http/request'

module ArkClient
  class API
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
        # @return [Faraday::Response]
        def list(parameters = {})
          get('transactions', parameters)
        end

        # Get the transaction by the given id.
        #
        # @param id [String]
        #
        # @return [Faraday::Response]
        def show(id)
          get('transactions/get', { id: id })
        end

        # Get all unconfirmed transactions.
        #
        # @param parameters [Hash]
        #
        # @return [Faraday::Response]
        def list_unconfirmed(parameters = {})
          get('transactions/unconfirmed', parameters)
        end

        # Get the unconfirmed transaction by the given id.
        #
        # @param id [String]
        #
        # @return [Faraday::Response]
        def show_unconfirmed(id)
          get('transactions/unconfirmed/get', { id: id })
        end
      end
    end
  end
end
