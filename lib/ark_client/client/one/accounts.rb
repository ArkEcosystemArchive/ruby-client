module ArkClient
  class Client
    # Methods for Version 1 of the API
    #
    # @see https://docs.ark.io/v1.0/reference#api-v1-accounts
    module One
      # Methods for the Accounts API
      module Accounts
        # Get the balance for the given address.
        #
        # @param address [String]
        #
        # @return [Hash]
        def balance(address)
          get('accounts/getBalance', { address: address })
        end

        # Get the public key for the given address.
        #
        # @param address [String]
        #
        # @return [Hash]
        def public_key(address)
          get('accounts/getPublickey', { address: address })
        end

        # Get the delegate by the given address.
        #
        # @param address [String]
        #
        # @return [Hash]
        def delegates(address)
          get('accounts/delegates', { address: address })
        end

        # Get the delegate registration fee.
        #
        # @param address [String]
        #
        # @return [Hash]
        def delegates_fee(address)
          get('accounts/delegates/fee', { address: address })
        end

        # Get the account by the given address.
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
