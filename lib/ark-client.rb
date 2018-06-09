require 'ark-client/client'

module ArkClient
  class << self
    include ArkClient::Configurable

    def client
      return @client if defined?(@client) && @client.same_options?(options)
      @client = ArkClient::Client.new(options)
    end
  end
end
