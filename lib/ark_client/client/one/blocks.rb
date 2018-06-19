require 'ark_client/http/request'

module ArkClient
  class Client
    # Methods for Version 1 of the API
    #
    # @see https://docs.ark.io/v1.0/reference#api-v1-blocks
    module One
      # Methods for the Blocks API
      class Blocks
        include ArkClient::HTTP::Request

        # Create a new resource instance.
        #
        # @param host [String]
        #
        # @return [ArkClient::Client::One::Blocks]
        def initialize(host)
          @host = host
          @version = 1
        end

        # Get all blocks.
        #
        # @param parameters [Hash]
        #
        # @return [Hash]
        def blocks(parameters = {})
          get('blocks', parameters)
        end

        # Get the delegate by the given id.
        #
        # @param id [String]
        #
        # @return [Hash]
        def block(id)
          get('blocks/get', {:id => id})
        end

        # Get the blockchain epoch.
        #
        # @return [Hash]
        def epoch
          get('blocks/getEpoch')
        end

        # Get the blockchain height.
        #
        # @return [Hash]
        def height
          get('blocks/getHeight')
        end

        # Get the blockchain nethash.
        #
        # @return [Hash]
        def nethash
          get('blocks/getNethash')
        end

        # Get the blockchain fee.
        #
        # @return [Hash]
        def fee
          get('blocks/getFee')
        end

        # Get the blockchain fees.
        #
        # @return [Hash]
        def fees
          get('blocks/getFees')
        end

        # Get the blockchain milestone.
        #
        # @return [Hash]
        def milestone
          get('blocks/getMilestone')
        end

        # Get the blockchain reward.
        #
        # @return [Hash]
        def reward
          get('blocks/getReward')
        end

        # Get the blockchain supply.
        #
        # @return [Hash]
        def supply
          get('blocks/getSupply')
        end

        # Get the blockchain status.
        #
        # @return [Hash]
        def status
          get('blocks/getStatus')
        end
      end
    end
  end
end
