module ArkClient
  class Client
    module MultiSignature
      def pending_multi_signatures(public_key)
        get('api/multisignatures/pending', {:publicKey => public_key})
      end

      def multi_signature_sign(transaction_id, secret, parameters = {})
        post('api/multisignatures/sign', {:transactionId => transaction_id, :secret => secret}.merge(parameters))
      end

      def create_multi_signature(secret, second_secret, keysgroup, lifetime, min)
        params = {
          :transactions => [
            ArkClient::TransactionBuilder.new.create_multisignature(secret, second_secret, keysgroup, lifetime, min).to_params
          ]
        }

        post('peer/transactions', params)
      end

      def multi_signature_accounts(public_key)
        get('api/multisignatures/accounts', {:publicKey => public_key})
      end
    end
  end
end
