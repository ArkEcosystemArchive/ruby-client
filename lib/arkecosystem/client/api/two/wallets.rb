require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # Methods for Version 2 of the API
      #
      # @see https://docs.ark.io/v1.0/reference#api-v2-wallets
      module Two
        # Methods for the Wallets API
        class Wallets < Base
          # Get all wallets.
          #
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def list(parameters = {})
            @client.get("wallets", parameters)
          end

          # Get all wallets sorted by balance.
          #
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def top(parameters = {})
            @client.get("wallets/top", parameters)
          end

          # Get the wallet by the given id.
          #
          # @param id [String]
          #
          # @return [Faraday::Response]
          def show(id)
            @client.get("wallets/#{id}")
          end

          # Get the transactions for the given wallet.
          #
          # @param id [String]
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def transactions(id, parameters = {})
            @client.get("wallets/#{id}/transactions", parameters)
          end

          # Get the sent transactions for the given wallet.
          #
          # @param id [String]
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def sent_transactions(id, parameters = {})
            @client.get("wallets/#{id}/transactions/sent", parameters)
          end

          # Get the received transactions for the given wallet.
          #
          # @param id [String]
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def received_transaction(id, parameters = {})
            @client.get("wallets/#{id}/transactions/received", parameters)
          end

          # Get the votes for the given wallet.
          #
          # @param if [String]
          #
          # @return [Faraday::Response]
          def votes(id)
            @client.get("wallets/#{id}/votes")
          end

          # Search all wallets.
          #
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def search(parameters)
            @client.post("wallets/search", parameters)
          end
        end
      end
    end
  end
end
