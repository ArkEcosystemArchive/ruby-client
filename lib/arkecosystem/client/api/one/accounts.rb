require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # Methods for Version 1 of the API
      #
      # @see https://docs.ark.io/v1.0/reference#api-v1-accounts
      module One
        # Methods for the Accounts API
        class Accounts < Base
          # Get the balance for the given address.
          #
          # @param address [String]
          #
          # @return [Faraday::Response]
          def balance(address)
            @client.get('accounts/getBalance', { address: address })
          end

          # Get the public key for the given address.
          #
          # @param address [String]
          #
          # @return [Faraday::Response]
          def public_key(address)
            @client.get('accounts/getPublickey', { address: address })
          end

          # Get the delegate by the given address.
          #
          # @param address [String]
          #
          # @return [Faraday::Response]
          def delegate(address)
            @client.get('accounts/delegates', { address: address })
          end

          # Get the delegate registration fee.
          #
          # @return [Faraday::Response]
          def delegates_fee
            @client.get('accounts/delegates/fee')
          end

          # Get the account by the given address.
          #
          # @param address [String]
          #
          # @return [Faraday::Response]
          def account(address)
            @client.get('accounts', { address: address })
          end
        end
      end
    end
  end
end
