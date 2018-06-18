module ArkClient
  class Client
    module API
      module One
        module Blocks
          def block(id)
            get('api/blocks/get',{:id => id})
          end

          def blocks(parameters = {})
            get('api/blocks', parameters)
          end

          def epoch
            get('api/blocks/getEpoch')
          end

          def height
            get('api/blocks/getHeight')
          end

          def nethash
            get('api/blocks/getNethash')
          end

          def fee
            get('api/blocks/getFee')
          end

          def fees
            get('api/blocks/getFees')
          end

          def milestone
            get('api/blocks/getMilestone')
          end

          def reward
            get('api/blocks/getReward')
          end

          def supply
            get('api/blocks/getSupply')
          end

          def status
            get('api/blocks/getStatus')
          end
        end
      end
    end
  end
end
