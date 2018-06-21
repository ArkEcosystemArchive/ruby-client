require 'ark_client/client'
require 'ark_client/connection'

# Ruby client for the Ark Core API
module ArkClient
  class << self
    # Instantiates a new Client or returns the current one if exists
    #
    # @return [ArkClient::Client]
    def client
      return @client if defined?(@client)

      @client = ArkClient::Client.new()
    end
  end
end
