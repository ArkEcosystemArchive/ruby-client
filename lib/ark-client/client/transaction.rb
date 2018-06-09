module ArkClient
  class Client
    module Transaction
      def transaction(id)
        get('api/transactions/get', {:id => id})
      end

      def transactions(parameters = {})
        get('api/transactions', parameters)
      end

      def unconfirmed_transaction(id)
        get('api/transactions/unconfirmed/get', {:id => id})
      end

      def unconfirmed_transactions(parameters = {})
        get('api/transactions/unconfirmed', parameters)
      end

      def create_transaction(recipient_id, amount, vendor_field, secret, second_secret=nil)
        params = {
          :transactions => [
            ArkClient::TransactionBuilder.new.create_transfer(recipient_id, amount, vendor_field, secret, second_secret).to_params
          ]
        }

        post('peer/transactions', params)
      end
    end
  end
end
