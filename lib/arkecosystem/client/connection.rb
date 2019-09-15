require 'arkecosystem/client/http/client'
require 'arkecosystem/client/api/blocks'
require 'arkecosystem/client/api/delegates'
require 'arkecosystem/client/api/node'
require 'arkecosystem/client/api/peers'
require 'arkecosystem/client/api/rounds'
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

        raise ArgumentError, 'No API host is provided.' if @host.nil?

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
        @blocks ||= ArkEcosystem::Client::API::Blocks.new(@client)
      end

      # Return the Delegates API resource.
      #
      # @return [Object]
      def delegates
        @delegates ||= ArkEcosystem::Client::API::Delegates.new(@client)
      end

      # Return the Node API resource.
      #
      # @return [Object]
      def node
        @node ||= ArkEcosystem::Client::API::Node.new(@client)
      end

      # Return the Peers API resource.
      #
      # @return [Object]
      def peers
        @peers ||= ArkEcosystem::Client::API::Peers.new(@client)
      end

      # Return the Rounds API resource.
      #
      # @return [Object]
      def rounds
        @rounds ||= ArkEcosystem::Client::API::Rounds.new(@client)
      end

      # Return the Transactions API resource.
      #
      # @return [Object]
      def transactions
        @transactions ||= ArkEcosystem::Client::API::Transactions.new(@client) # rubocop:disable Metrics/LineLength
      end

      # Return the Votes API resource.
      #
      # @return [Object]
      def votes
        @votes ||= ArkEcosystem::Client::API::Votes.new(@client)
      end

      # Return the Wallets API resource.
      #
      # @return [Object]
      def wallets
        @wallets ||= ArkEcosystem::Client::API::Wallets.new(@client)
      end
    end
  end
end
