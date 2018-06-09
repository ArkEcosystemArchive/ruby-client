module ArkClient
  class Client
    module Block
      def block(id)
        get('api/blocks/get', {:id => id})
      end

      def blocks(parameters = {})
        get('api/blocks', parameters)
      end

      def block_epoch
        get('api/blocks/getEpoch')
      end

      def block_height
        get('api/blocks/getHeight')
      end

      def block_nethash
        get('api/blocks/getNethash')
      end

      def block_fee
        get('api/blocks/getFee')
      end

      def block_fees
        get('api/blocks/getFees')
      end

      def block_milestone
        get('api/blocks/getMilestone')
      end

      def block_reward
        get('api/blocks/getReward')
      end

      def block_supply
        get('api/blocks/getSupply')
      end

      def block_status
        get('api/blocks/getStatus')
      end
    end
  end
end
