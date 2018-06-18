module ArkClient
  class Client
    module Two
      # Methods for the Wallets API
      module Wallets
        class << self
          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def list(parameters = {})
            get("wallets", parameters)
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def top(parameters = {})
            get("wallets/top", parameters)
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def get(id)
            get("wallets/#{id}")
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def transactions(id, parameters = {})
            get("wallets/#{id}/transactions", parameters)
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def sent_transactions(id, parameters = {})
            get("wallets/#{id}/transactions/sent", parameters)
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def received_transaction(id, parameters = {})
            get("wallets/#{id}/transactions/received", parameters)
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def votes(id)
            get("wallets/#{id}/votes")
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def search(parameters)
            post("wallets/search", parameters)
          end
        end
      end
    end
  end
end
