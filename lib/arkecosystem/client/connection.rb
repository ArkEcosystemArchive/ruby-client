require 'arkecosystem/client/http/client'
require 'arkecosystem/client/api/blocks'
require 'arkecosystem/client/api/delegates'
require 'arkecosystem/client/api/node'
require 'arkecosystem/client/api/peers'
require 'arkecosystem/client/api/transactions'
require 'arkecosystem/client/api/votes'
require 'arkecosystem/client/api/wallets'

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
          @blocks ||= ArkEcosystem::Client::API::Blocks.new(@client)
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
          @delegates ||= ArkEcosystem::Client::API::Delegates.new(@client)
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
          @node ||= ArkEcosystem::Client::API::Node.new(@client)
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
          @peers ||= ArkEcosystem::Client::API::Peers.new(@client)
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
          @transactions ||= ArkEcosystem::Client::API::Transactions.new(@client) # rubocop:disable Metrics/LineLength
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
          @votes ||= ArkEcosystem::Client::API::Votes.new(@client)
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
          @wallets ||= ArkEcosystem::Client::API::Wallets.new(@client)
        else
          raise NotImplementedError
        end
      end
    end
  end
end
