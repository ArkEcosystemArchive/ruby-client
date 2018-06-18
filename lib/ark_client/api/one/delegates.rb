module ArkClient
  module API
    module One
      module Delegates
        def count
          get('api/delegates/count')
        end

        def search(q, parameters = {})
          get('api/delegates/search',{q: q}.merge(parameters))
        end

        def voters(public_key, parameters = {})
          get('api/delegates/voters',{publicKey: public_key}.merge(parameters))
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
          get('api/delegates/forging/getForgedByAccount',{generatorPublicKey: generator_public_key})
        end

        def next_forgers
          get('api/delegates/getNextForgers')
        end

        def forging_status(publicKey, parameters = {})
          post('api/delegates/forging/disable',{:publicKey => publicKey}.merge(parameters))
        end
      end
    end
  end
end
