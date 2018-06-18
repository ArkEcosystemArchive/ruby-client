module ArkClient
  class Client
    module One
      # Methods for the Accounts API
      module Accounts
        # Short description of what this function does.
        #
        # @param address [String]
        #
        # @return [Hash]
        def get_account_balance(address)
          get('accounts/getBalance', { address: address })
        end

        # Short description of what this function does.
        #
        # @param address [String]
        #
        # @return [Hash]
        def public_key(address)
          get('accounts/getPublickey', { address: address })
        end

        # Short description of what this function does.
        #
        # @param address [String]
        #
        # @return [Hash]
        def delegates(address)
          get('accounts/delegates', { address: address })
        end

        # Short description of what this function does.
        #
        # @param address [String]
        #
        # @return [Hash]
        def delegates_fee(address)
          get('accounts/delegates/fee', { address: address })
        end

        # Short description of what this function does.
        #
        # @param address [String]
        #
        # @return [Hash]
        def account(address)
          get('accounts', { address: address })
        end
      end
    end
  end
end
