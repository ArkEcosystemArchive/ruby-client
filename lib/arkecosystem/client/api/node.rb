require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # Methods for the Node API
      class Node < Base
        # Get the loader status.
        #
        # @return [Faraday::Response]
        def status
          @client.get('node/status')
        end

        # Get the loader syncing status.
        #
        # @return [Faraday::Response]
        def syncing
          @client.get('node/syncing')
        end

        # Get the loader configuration.
        #
        # @return [Faraday::Response]
        def configuration
          @client.get('node/configuration')
        end
      end
    end
  end
end
