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
require 'ark_client/api/two/webhooks'

module ArkClient
  class Connection
    include ArkClient::HTTP::Request

    include ArkClient::Client::API::One::Accounts
    include ArkClient::Client::API::One::Blocks
    include ArkClient::Client::API::One::Delegates
    include ArkClient::Client::API::One::Loader
    include ArkClient::Client::API::One::Peers
    include ArkClient::Client::API::One::Signatures
    include ArkClient::Client::API::One::Transactions

    include ArkClient::Client::API::Two::Blocks
    include ArkClient::Client::API::Two::Delegates
    include ArkClient::Client::API::Two::Node
    include ArkClient::Client::API::Two::Peers
    include ArkClient::Client::API::Two::Transactions
    include ArkClient::Client::API::Two::Votes
    include ArkClient::Client::API::Two::Wallets
    include ArkClient::Client::API::Two::Webhooks

    def initialize(config)
      @host = config[:host]
      @version = config[:version]
    end

    def accounts
      if @version === 1
        ArkClient::Client::API::One::Accounts
      else
        raise NotImplementedError
      end
    end

    def blocks
      if @version === 1
        ArkClient::Client::API::One::Blocks
      else
        ArkClient::Client::API::Two::Blocks
      end
    end

    def delegates
      if @version === 1
        ArkClient::Client::API::One::Delegates
      else
        ArkClient::Client::API::Two::Delegates
      end
    end

    def transactions
      if @version === 1
        ArkClient::Client::API::One::Transactions
      else
        ArkClient::Client::API::Two::Transactions
      end
    end

    def loader
      if @version === 1
        ArkClient::Client::API::One::Loader
      else
        raise NotImplementedError
      end
    end

    def node
      if @version === 1
        raise NotImplementedError
      else
        ArkClient::Client::API::Two::Node
      end
    end

    def peers
      if @version === 1
        ArkClient::Client::API::One::Peers
      else
        ArkClient::Client::API::Two::Peers
      end
    end

    def signatures
      if @version === 1
        ArkClient::Client::API::One::Signatures
      else
        raise NotImplementedError
      end
    end

    def votes
      if @version === 1
        raise NotImplementedError
      else
        ArkClient::Client::API::Two::Votes
      end
    end

    def wallets
      if @version === 1
        raise NotImplementedError
      else
        ArkClient::Client::API::Two::Wallets
      end
    end

    def webhooks
      if @version === 1
        raise NotImplementedError
      else
        ArkClient::Client::API::Two::Webhooks
      end
    end
  end
end
