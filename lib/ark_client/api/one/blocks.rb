module ArkClient
  class Client
    module API
      module One
        module Blocks
          class << self
            def block(id)
              get('blocks/get',{:id => id})
            end

            def blocks(parameters = {})
              get('blocks', parameters)
            end

            def epoch
              get('blocks/getEpoch')
            end

            def height
              get('blocks/getHeight')
            end

            def nethash
              get('blocks/getNethash')
            end

            def fee
              get('blocks/getFee')
            end

            def fees
              get('blocks/getFees')
            end

            def milestone
              get('blocks/getMilestone')
            end

            def reward
              get('blocks/getReward')
            end

            def supply
              get('blocks/getSupply')
            end

            def status
              get('blocks/getStatus')
            end
          end
        end
      end
    end
  end
end
