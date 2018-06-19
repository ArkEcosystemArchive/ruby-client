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
        # @return [Faraday::Response]
        def list(parameters = {})
          get('blocks', parameters)
        end

        # Get the delegate by the given id.
        #
        # @param id [String]
        #
        # @return [Faraday::Response]
        def show(id)
          get('blocks/get', {:id => id})
        end

        # Get the blockchain epoch.
        #
        # @return [Faraday::Response]
        def epoch
          get('blocks/getEpoch')
        end

        # Get the blockchain height.
        #
        # @return [Faraday::Response]
        def height
          get('blocks/getHeight')
        end

        # Get the blockchain nethash.
        #
        # @return [Faraday::Response]
        def nethash
          get('blocks/getNethash')
        end

        # Get the blockchain fee.
        #
        # @return [Faraday::Response]
        def fee
          get('blocks/getFee')
        end

        # Get the blockchain fees.
        #
        # @return [Faraday::Response]
        def fees
          get('blocks/getFees')
        end

        # Get the blockchain milestone.
        #
        # @return [Faraday::Response]
        def milestone
          get('blocks/getMilestone')
        end

        # Get the blockchain reward.
        #
        # @return [Faraday::Response]
        def reward
          get('blocks/getReward')
        end

        # Get the blockchain supply.
        #
        # @return [Faraday::Response]
        def supply
          get('blocks/getSupply')
        end

        # Get the blockchain status.
        #
        # @return [Faraday::Response]
        def status
          get('blocks/getStatus')
        end
      end
    end
  end
end
