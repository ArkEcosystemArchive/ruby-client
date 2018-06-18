module ArkClient
  class Client
    module One
      # Methods for the Blocks API
      module Blocks
        class << self
          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def block(id)
            get('blocks/get',{:id => id})
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def blocks(parameters = {})
            get('blocks', parameters)
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def epoch
            get('blocks/getEpoch')
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def height
            get('blocks/getHeight')
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def nethash
            get('blocks/getNethash')
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def fee
            get('blocks/getFee')
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def fees
            get('blocks/getFees')
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def milestone
            get('blocks/getMilestone')
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def reward
            get('blocks/getReward')
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def supply
            get('blocks/getSupply')
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def status
            get('blocks/getStatus')
          end
        end
      end
    end
  end
end
