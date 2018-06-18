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
  # include ArkClient::API::One::Accounts
  # include ArkClient::API::One::Blocks
  # include ArkClient::API::One::Delegates
  # include ArkClient::API::One::Loader
  # include ArkClient::API::One::Peers
  # include ArkClient::API::One::Signatures
  # include ArkClient::API::One::Transactions

  # include ArkClient::API::Two::Blocks
  # include ArkClient::API::Two::Delegates
  # include ArkClient::API::Two::Node
  # include ArkClient::API::Two::Peers
  # include ArkClient::API::Two::Transactions
  # include ArkClient::API::Two::Votes
  # include ArkClient::API::Two::Wallets
  # include ArkClient::API::Two::Webhooks

  module Connection
    class << self
      def initialize(name, author)
        @name = name
        @author = author
      end
    end
  end
end
