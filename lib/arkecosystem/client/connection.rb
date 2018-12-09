require 'arkecosystem/client/http/client'
require 'arkecosystem/client/api/two/blocks'
require 'arkecosystem/client/api/two/delegates'
require 'arkecosystem/client/api/two/node'
require 'arkecosystem/client/api/two/peers'
require 'arkecosystem/client/api/two/transactions'
require 'arkecosystem/client/api/two/votes'
require 'arkecosystem/client/api/two/wallets'

module ArkEcosystem
  module Client
    # The connection used to communicate with the API.
    class Connection
      attr_accessor :client

      # Create a new connection instance.
      #
      # @param config [Hash]
      #
      # @return [ArkEcosystem::Client::Connection]
      def initialize(config, client = nil)
        @host = config[:host]
        @version = config[:version]

        raise ArgumentError, 'No API host is provided.' if @host.nil?
        raise ArgumentError, 'No API version is provided.' if @version.nil?

        if client.nil? # rubocop:disable Style/ConditionalAssignment
          @client = ArkEcosystem::Client::HTTP::Client.new(config)
        else
          @client = client.new(config)
        end
      end

      # Return the Blocks API resource.
      #
      # @return [Object]
      def blocks
        case @version
        when 2
          @blocks ||= ArkEcosystem::Client::API::Two::Blocks.new(@client)
        else
          raise NotImplementedError
        end
      end

      # Return the Delegates API resource.
      #
      # @return [Object]
      def delegates
        case @version
        when 2
          @delegates ||= ArkEcosystem::Client::API::Two::Delegates.new(@client)
        else
          raise NotImplementedError
        end
      end

      # Return the Node API resource.
      #
      # @return [Object]
      def node
        case @version
        when 2
          @node ||= ArkEcosystem::Client::API::Two::Node.new(@client)
        else
          raise NotImplementedError
        end
      end

      # Return the Peers API resource.
      #
      # @return [Object]
      def peers
        case @version
        when 2
          @peers ||= ArkEcosystem::Client::API::Two::Peers.new(@client)
        else
          raise NotImplementedError
        end
      end

      # Return the Transactions API resource.
      #
      # @return [Object]
      def transactions
        case @version
        when 2
          @transactions ||= ArkEcosystem::Client::API::Two::Transactions.new(@client) # rubocop:disable Metrics/LineLength
        else
          raise NotImplementedError
        end
      end

      # Return the Votes API resource.
      #
      # @return [Object]
      def votes
        case @version
        when 2
          @votes ||= ArkEcosystem::Client::API::Two::Votes.new(@client)
        else
          raise NotImplementedError
        end
      end

      # Return the Wallets API resource.
      #
      # @return [Object]
      def wallets
        case @version
        when 2
          @wallets ||= ArkEcosystem::Client::API::Two::Wallets.new(@client)
        else
          raise NotImplementedError
        end
      end
    end
  end
end
