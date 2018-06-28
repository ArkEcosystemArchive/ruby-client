require 'arkecosystem/client/client'
require 'arkecosystem/client/connection'

# Ruby client for the Ark Core API
module ArkEcosystem
  module Client
    class << self
      # Short description of what this function does.
      #
      # @return [ArkEcosystem::Client::Client]
      def client
        return @client if defined?(@client)

        @client = ArkEcosystem::Client::Client.new()
      end
    end
  end
end
