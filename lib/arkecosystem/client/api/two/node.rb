require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # Methods for Version 2 of the API
      #
      # @see https://docs.ark.io/v1.0/reference#api-v2-node
      module Two
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
end
