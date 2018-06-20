require 'ark_client/http/request'
require 'ark_client/api/one/accounts'
require 'ark_client/api/one/blocks'
require 'ark_client/api/one/delegates'
require 'ark_client/api/one/loader'
require 'ark_client/api/one/peers'
require 'ark_client/api/one/signatures'
require 'ark_client/api/one/transactions'
require 'ark_client/api/two/blocks'
require 'ark_client/api/two/delegates'
require 'ark_client/api/two/node'
require 'ark_client/api/two/peers'
require 'ark_client/api/two/transactions'
require 'ark_client/api/two/votes'
require 'ark_client/api/two/wallets'
require 'ark_client/api/webhooks'

module ArkClient
  class Connection
    include ArkClient::HTTP::Request

    # Create a new connection instance.
    #
    # @param config [Hash]
    #
    # @return [ArkClient::Connection]
    def initialize(config)
      @host = config[:host]
      @version = config[:version]

      raise ArgumentError, 'No API host is provided.' if @host.nil?
      raise ArgumentError, 'No API version is provided.' if @version.nil?
    end

    # Return the Accounts API resource.
    #
    # @return [Object]
    def accounts
      case @version
      when 1
        @accounts ||= ArkClient::API::One::Accounts.new(@host)
      else
        raise NotImplementedError
      end
    end

    # Return the Blocks API resource.
    #
    # @return [Object]
    def blocks
      case @version
      when 1
        @blocks ||= ArkClient::API::One::Blocks.new(@host)
      when 2
        @blocks ||= ArkClient::API::Two::Blocks.new(@host)
      else
        raise NotImplementedError
      end
    end

    # Return the Delegates API resource.
    #
    # @return [Object]
    def delegates
      case @version
      when 1
        @delegates ||= ArkClient::API::One::Delegates.new(@host)
      when 2
        @delegates ||= ArkClient::API::Two::Delegates.new(@host)
      else
        raise NotImplementedError
      end
    end

    # Return the Loader API resource.
    #
    # @return [Object]
    def loader
      case @version
      when 1
        @loader ||= ArkClient::API::One::Loader.new(@host)
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
        @node ||= ArkClient::API::Two::Node.new(@host)
      else
        raise NotImplementedError
      end
    end

    # Return the Peers API resource.
    #
    # @return [Object]
    def peers
      case @version
      when 1
        @peers ||= ArkClient::API::One::Peers.new(@host)
      when 2
        @peers ||= ArkClient::API::Two::Peers.new(@host)
      else
        raise NotImplementedError
      end
    end

    # Return the Signatures API resource.
    #
    # @return [Object]
    def signatures
      case @version
      when 1
        @signatures ||= ArkClient::API::One::Signatures.new(@host)
      else
        raise NotImplementedError
      end
    end

    # Return the Transactions API resource.
    #
    # @return [Object]
    def transactions
      case @version
      when 1
        @transactions ||= ArkClient::API::One::Transactions.new(@host)
      when 2
        @transactions ||= ArkClient::API::Two::Transactions.new(@host)
      else
        raise NotImplementedError
      end
    end

    # Return the Vptes API resource.
    #
    # @return [Object]
    def votes
      case @version
      when 2
        @votes ||= ArkClient::API::Two::Votes.new(@host)
      else
        raise NotImplementedError
      end
    end

    # Return the Wallets API resource.
    #
    # @return [Object]
    def Wallets
      case @version
      when 2
        @wallets ||= ArkClient::API::Two::Wallets.new(@host)
      else
        raise NotImplementedError
      end
    end

    # Return the Webhooks API resource.
    #
    # @return [Object]
    def webhooks
      @webhooks ||= ArkClient::API::Webhooks.new(@host)
    end
  end
end
