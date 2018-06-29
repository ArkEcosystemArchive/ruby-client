require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      class Base
        # Create a new resource instance.
        #
        # @param client [Object]
        def initialize(client)
          @client = client
        end
      end
    end
  end
end
