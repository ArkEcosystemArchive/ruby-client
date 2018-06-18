module ArkClient
  module API
    module One
      module Accounts
        def balance(address)
          get('api/accounts/getBalance', { address: address })
        end

        def public_key(address)
          get('api/accounts/getPublickey', { address: address })
        end

        def delegates(address)
          get('api/accounts/delegates', { address: address })
        end

        def delegates_fee(address)
          get('api/accounts/delegates/fee', { address: address })
        end

        def account(address)
          get('api/accounts', { address: address })
        end
      end
    end
  end
end
