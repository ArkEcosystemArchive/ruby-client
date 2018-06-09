module ArkClient
  class Client
    module Signature
      def signature_fee
        get('api/signatures/fee')
      end

      #rename method
      def create_signature(secret, second_secret)
        params = {
          :transactions => [
            ArkClient::TransactionBuilder.new.create_second_signature(second_secret, secret).to_params
          ]
        }

        post('peer/transactions', params)
      end
    end
  end
end
