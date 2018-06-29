require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # Methods for Version 1 of the API
      #
      # @see https://docs.ark.io/v1.0/reference#api-v1-loader
      module One
        # Methods for the Loader API
        class Loader < Base
          # Get the loader status.
          #
          # @return [Faraday::Response]
          def status
            @client.get('loader/status')
          end

          # Get the loader syncing status.
          #
          # @return [Faraday::Response]
          def sync
            @client.get('loader/status/sync')
          end

          # Get the loader configuration.
          #
          # @return [Faraday::Response]
          def autoconfigure
            @client.get('loader/autoconfigure')
          end
        end
      end
    end
  end
end
