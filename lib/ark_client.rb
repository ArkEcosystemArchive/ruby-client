require 'ark_client/client'
require 'ark_client/connection'

# Ruby client for the Ark Core API
module ArkClient
  class << self
    # Short description of what this function does.
    #
    # @return [ArkClient::Client]
    def client
      return @client if defined?(@client)

      @client = ArkClient::Client.new()
    end
  end
end
