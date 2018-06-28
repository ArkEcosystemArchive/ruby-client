require 'arkecosystem/client/http/request'

module ArkEcosystem
  module Client
    class API
      # Methods for Version 2 of the API
      #
      # @see https://docs.ark.io/v1.0/reference#api-v2-wallets
      module Two
        # Methods for the Wallets API
        class Wallets
          include ArkEcosystem::Client::HTTP::Request

          # Create a new resource instance.
          #
          # @param host [String]
          #
          # @return [ArkEcosystem::Client::API::Two::Wallets]
          def initialize(host)
            @host = host
            @version = 2
          end

          # Get all wallets.
          #
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def list(parameters = {})
            get("wallets", parameters)
          end

          # Get all wallets sorted by balance.
          #
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def top(parameters = {})
            get("wallets/top", parameters)
          end

          # Get the wallet by the given id.
          #
          # @param id [String]
          #
          # @return [Faraday::Response]
          def show(id)
            get("wallets/#{id}")
          end

          # Get the transactions for the given wallet.
          #
          # @param id [String]
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def transactions(id, parameters = {})
            get("wallets/#{id}/transactions", parameters)
          end

          # Get the sent transactions for the given wallet.
          #
          # @param id [String]
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def sent_transactions(id, parameters = {})
            get("wallets/#{id}/transactions/sent", parameters)
          end

          # Get the received transactions for the given wallet.
          #
          # @param id [String]
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def received_transaction(id, parameters = {})
            get("wallets/#{id}/transactions/received", parameters)
          end

          # Get the votes for the given wallet.
          #
          # @param if [String]
          #
          # @return [Faraday::Response]
          def votes(id)
            get("wallets/#{id}/votes")
          end

          # Search all wallets.
          #
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def search(parameters)
            post("wallets/search", parameters)
          end
        end
      end
    end
  end
end
