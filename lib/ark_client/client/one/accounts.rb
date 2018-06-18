module ArkClient
  class Client
    module One
      module Accounts
        def get_account_balance(address)
          get('accounts/getBalance', { address: address })
        end

        def public_key(address)
          get('accounts/getPublickey', { address: address })
        end

        def delegates(address)
          get('accounts/delegates', { address: address })
        end

        def delegates_fee(address)
          get('accounts/delegates/fee', { address: address })
        end

        def account(address)
          get('accounts', { address: address })
        end
      end
    end
  end
end
