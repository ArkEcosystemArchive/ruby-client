require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # The base for any API resources.
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
