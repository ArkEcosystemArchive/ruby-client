require 'ark_client/client'
require 'ark_client/connection'

module ArkClient
  class << self
    def client
      return @client if defined?(@client)

      @client = ArkClient::Client.new()
    end
  end
end
