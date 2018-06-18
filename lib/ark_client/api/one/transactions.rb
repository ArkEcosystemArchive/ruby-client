module ArkClient
  class Client
    module API
      module One
        module Transactions
          class << self
            def transaction(id)
              get('transactions/get',{:id => id})
            end

            def transactions(parameters = {})
              get('transactions', parameters)
            end

            def unconfirmed_transaction(id)
              get('transactions/unconfirmed/get',{:id => id})
            end

            def unconfirmed_transactions(parameters = {})
              get('transactions/unconfirmed', parameters)
            end
          end
        end
      end
    end
  end
end
