module ArkClient
  class Client
    module API
      module One
        module Delegates
          class << self
            def count
              get('delegates/count')
            end

            def search(q, parameters = {})
              get('delegates/search',{q: q}.merge(parameters))
            end

            def voters(public_key, parameters = {})
              get('delegates/voters',{publicKey: public_key}.merge(parameters))
            end

            def delegate(parameters = {})
              get('delegates/get', parameters)
            end

            def delegates(parameters = {})
              get('delegates', parameters)
            end

            def delegate_fee
              get('delegates/fee')
            end

            def forged_by_account(generator_public_key)
              get('delegates/forging/getForgedByAccount',{generatorPublicKey: generator_public_key})
            end

            def next_forgers
              get('delegates/getNextForgers')
            end

            def forging_status(publicKey, parameters = {})
              post('delegates/forging/disable',{:publicKey => publicKey}.merge(parameters))
            end
          end
        end
      end
    end
  end
end
