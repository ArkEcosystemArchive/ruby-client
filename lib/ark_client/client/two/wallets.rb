module ArkClient
  class Client
    module Two
      module Wallets
        class << self
          def list(parameters = {})
            get("wallets", parameters)
          end

          def top(parameters = {})
            get("wallets/top", parameters)
          end

          def get(id)
            get("wallets/#{id}")
          end

          def transactions(id, parameters = {})
            get("wallets/#{id}/transactions", parameters)
          end

          def sent_transactions(id, parameters = {})
            get("wallets/#{id}/transactions/sent", parameters)
          end

          def received_transaction(id, parameters = {})
            get("wallets/#{id}/transactions/received", parameters)
          end

          def votes(id)
            get("wallets/#{id}/votes")
          end

          def search(parameters)
            post("wallets/search", parameters)
          end
        end
      end
    end
  end
end
