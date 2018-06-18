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
require 'ark_client/client/two/webhooks'

module ArkClient
  class Connection
    include ArkClient::HTTP::Request

    # Short description of what this function does.
    #
    # @param address [String]
    #
    # @return [Hash]
    def initialize(config)
      @host = config[:host]
      @version = config[:version]

      if @version === 1
        include_version_one_methods
      else
        include_version_two_methods
      end
    end

    # Short description of what this function does.
    #
    # @param address [String]
    #
    # @return [Hash]
    def include_version_one_methods
      self.singleton_class.send(:include, ArkClient::Client::One::Accounts)
      self.singleton_class.send(:include, ArkClient::Client::One::Blocks)
      self.singleton_class.send(:include, ArkClient::Client::One::Delegates)
      self.singleton_class.send(:include, ArkClient::Client::One::Loader)
      self.singleton_class.send(:include, ArkClient::Client::One::Peers)
      self.singleton_class.send(:include, ArkClient::Client::One::Signatures)
      self.singleton_class.send(:include, ArkClient::Client::One::Transactions)
    end

    # Short description of what this function does.
    #
    # @param address [String]
    #
    # @return [Hash]
    def include_version_two_methods
      self.singleton_class.send(:include, ArkClient::Client::Two::Blocks)
      self.singleton_class.send(:include, ArkClient::Client::Two::Delegates)
      self.singleton_class.send(:include, ArkClient::Client::Two::Node)
      self.singleton_class.send(:include, ArkClient::Client::Two::Peers)
      self.singleton_class.send(:include, ArkClient::Client::Two::Transactions)
      self.singleton_class.send(:include, ArkClient::Client::Two::Votes)
      self.singleton_class.send(:include, ArkClient::Client::Two::Wallets)
      self.singleton_class.send(:include, ArkClient::Client::Two::Webhooks)
    end
  end
end
