require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # Methods for Version 1 of the API
      #
      # @see https://docs.ark.io/v1.0/reference#api-v1-transactions
      module One
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

          # Get the transaction by the given id.
          #
          # @param id [String]
          #
          # @return [Faraday::Response]
          def show(id)
            @client.get('transactions/get', { id: id })
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
            @client.get('transactions/unconfirmed/get', { id: id })
          end
        end
      end
    end
  end
end
