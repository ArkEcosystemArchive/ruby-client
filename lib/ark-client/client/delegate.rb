module ArkClient
  class Client
    module Delegate
      def count_delegates
        get('api/delegates/count')
      end

      def search_delegates(q, parameters = {})
        get('api/delegates/search', {q: q}.merge(parameters))
      end

      def delegate_voters(public_key, parameters = {})
        get('api/delegates/voters', {publicKey: public_key}.merge(parameters))
      end

      def delegate(parameters = {})
        get('api/delegates/get', parameters)
      end

      def delegates(parameters = {})
        get('api/delegates', parameters)
      end

      def delegate_fee
        get('api/delegates/fee')
      end

      def forged_by_account(generator_public_key)
        get('api/delegates/forging/getForgedByAccount', {generatorPublicKey: generator_public_key})
      end

      def create_delegate(username, secret, second_secret = nil)
        params = {
          :transactions => [
            ArkClient::TransactionBuilder.new.create_delegate(username, secret, second_secret).to_params
          ]
        }

        post('peer/transactions', params)
      end

      def vote_for_delegate(delegates, secret, second_secret = nil)
        delegates = Array(delegates).map { |d| d[0] == '+' ? d : "+#{d}" }
        params = {
          :transactions => [
            ArkClient::TransactionBuilder.new.create_vote(delegates, secret, second_secret, network_address).to_params
          ]
        }

        post('peer/transactions', params)
      end

      def remove_vote_for_delegate(delegates, secret, second_secret = nil)
        delegates = Array(delegates).map { |d| d[0] == '-' ? d : "-#{d}" }
        params = {
          :transactions => [
            ArkClient::TransactionBuilder.new.create_vote(delegates, secret, second_secret, network_address).to_params
          ]
        }

        post('peer/transactions', params)
      end

      def next_forgers
        get('api/delegates/getNextForgers')
      end

      def enable_forging(secret, parameters = {})
        post('api/delegates/forging/enable', {:secret => secret}.merge(parameters))
      end

      def disable_forging(secret, parameters = {})
        post('api/delegates/forging/disable', {:secret => secret}.merge(parameters))
      end

      def forging_status(publicKey, parameters = {})
        post('api/delegates/forging/disable', {:publicKey => publicKey}.merge(parameters))
      end
    end
  end
end
