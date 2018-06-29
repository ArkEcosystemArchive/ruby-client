require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # Methods for Version 1 of the API
      #
      # @see https://docs.ark.io/v1.0/reference#api-v1-blocks
      module One
        # Methods for the Blocks API
        class Blocks < Base
          # Get all blocks.
          #
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def list(parameters = {})
            @client.get('blocks', parameters)
          end

          # Get the delegate by the given id.
          #
          # @param id [String]
          #
          # @return [Faraday::Response]
          def show(id)
            @client.get('blocks/get', {:id => id})
          end

          # Get the blockchain epoch.
          #
          # @return [Faraday::Response]
          def epoch
            @client.get('blocks/getEpoch')
          end

          # Get the blockchain height.
          #
          # @return [Faraday::Response]
          def height
            @client.get('blocks/getHeight')
          end

          # Get the blockchain nethash.
          #
          # @return [Faraday::Response]
          def nethash
            @client.get('blocks/getNethash')
          end

          # Get the blockchain fee.
          #
          # @return [Faraday::Response]
          def fee
            @client.get('blocks/getFee')
          end

          # Get the blockchain fees.
          #
          # @return [Faraday::Response]
          def fees
            @client.get('blocks/getFees')
          end

          # Get the blockchain milestone.
          #
          # @return [Faraday::Response]
          def milestone
            @client.get('blocks/getMilestone')
          end

          # Get the blockchain reward.
          #
          # @return [Faraday::Response]
          def reward
            @client.get('blocks/getReward')
          end

          # Get the blockchain supply.
          #
          # @return [Faraday::Response]
          def supply
            @client.get('blocks/getSupply')
          end

          # Get the blockchain status.
          #
          # @return [Faraday::Response]
          def status
            @client.get('blocks/getStatus')
          end
        end
      end
    end
  end
end
