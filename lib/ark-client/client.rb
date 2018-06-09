require 'ark-client/connection'
require 'ark-client/configurable'
require 'ark-client/transaction_builder'

require 'ark-client/client/account'
require 'ark-client/client/block'
require 'ark-client/client/delegate'
require 'ark-client/client/loader'
require 'ark-client/client/multisignature'
require 'ark-client/client/peer'
require 'ark-client/client/signature'
require 'ark-client/client/transaction'

module ArkClient
  MAIN_NETWORK_ADDRESS = '17'
  DEV_NETWORK_ADDRESS = '1e'

  class Client
    include ArkClient::Configurable
    include ArkClient::Connection
    include ArkClient::Client::Account
    include ArkClient::Client::Block
    include ArkClient::Client::Delegate
    include ArkClient::Client::Loader
    include ArkClient::Client::MultiSignature
    include ArkClient::Client::Peer
    include ArkClient::Client::Signature
    include ArkClient::Client::Transaction

    def initialize(options = {})
      ArkClient::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", options[key] || Ark.instance_variable_get(:"@#{key}"))
      end

      @network_address ||= ArkClient::MAIN_NETWORK_ADDRESS
    end
  end
end
