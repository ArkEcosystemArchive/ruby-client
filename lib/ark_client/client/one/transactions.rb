module ArkClient
  class Client
    module One
      # Methods for the Transactions API
      module Transactions
        class << self
          # Short description of what this function does.
          #
          # @param id [String]
          #
          # @return [Hash]
          def transaction(id)
            get('transactions/get', {:id => id})
          end

          # Short description of what this function does.
          #
          # @param parameters [Hash]
          #
          # @return [Hash]
          def transactions(parameters = {})
            get('transactions', parameters)
          end

          # Short description of what this function does.
          #
          # @param id [String]
          #
          # @return [Hash]
          def unconfirmed_transaction(id)
            get('transactions/unconfirmed/get', {:id => id})
          end

          # Short description of what this function does.
          #
          # @param parameters [Hash]
          #
          # @return [Hash]
          def unconfirmed_transactions(parameters = {})
            get('transactions/unconfirmed', parameters)
          end
        end
      end
    end
  end
end
