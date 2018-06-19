require 'ark_client/http/request'
require 'ark_client/client/one/accounts'
require 'ark_client/client/one/blocks'
require 'ark_client/client/one/delegates'
require 'ark_client/client/one/loader'
require 'ark_client/client/one/peers'
require 'ark_client/client/one/signatures'
require 'ark_client/client/one/transactions'
require 'ark_client/client/two/blocks'
require 'ark_client/client/two/delegates'
require 'ark_client/client/two/node'
require 'ark_client/client/two/peers'
require 'ark_client/client/two/transactions'
require 'ark_client/client/two/votes'
require 'ark_client/client/two/wallets'
require 'ark_client/client/webhooks'

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
        @accounts ||= ArkClient::Client::One::Accounts.new(@host)
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
        @blocks ||= ArkClient::Client::One::Blocks.new(@host)
      when 2
        @blocks ||= ArkClient::Client::Two::Blocks.new(@host)
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
        @delegates ||= ArkClient::Client::One::Delegates.new(@host)
      when 2
        @delegates ||= ArkClient::Client::Two::Delegates.new(@host)
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
        @loader ||= ArkClient::Client::One::Loader.new(@host)
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
        @node ||= ArkClient::Client::Two::Node.new(@host)
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
        @peers ||= ArkClient::Client::One::Peers.new(@host)
      when 2
        @peers ||= ArkClient::Client::Two::Peers.new(@host)
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
        @signatures ||= ArkClient::Client::One::Signatures.new(@host)
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
        @transactions ||= ArkClient::Client::One::Transactions.new(@host)
      when 2
        @transactions ||= ArkClient::Client::Two::Transactions.new(@host)
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
        @votes ||= ArkClient::Client::Two::Votes.new(@host)
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
        @wallets ||= ArkClient::Client::Two::Wallets.new(@host)
      else
        raise NotImplementedError
      end
    end

    # Return the Webhooks API resource.
    #
    # @return [Object]
    def webhooks
      @webhooks ||= ArkClient::Client::Webhooks.new(@host)
    end
  end
end
