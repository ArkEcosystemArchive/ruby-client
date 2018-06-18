module ArkClient
  module API
    module One
      module Transactions
        def transaction(id)
          get('api/transactions/get',{:id => id})
        end

        def transactions(parameters = {})
          get('api/transactions', parameters)
        end

        def unconfirmed_transaction(id)
          get('api/transactions/unconfirmed/get',{:id => id})
        end

        def unconfirmed_transactions(parameters = {})
          get('api/transactions/unconfirmed', parameters)
        end
      end
    end
  end
end
