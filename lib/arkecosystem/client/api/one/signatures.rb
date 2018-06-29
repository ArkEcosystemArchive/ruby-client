require 'arkecosystem/client/api/base'

module ArkEcosystem
  module Client
    module API
      # Methods for Version 1 of the API
      #
      # @see https://docs.ark.io/v1.0/reference#api-v1-signatures
      module One
        # Methods for the Signatures API
        class Signatures < Base
          # Get the signatures fee.
          #
          # @return [Faraday::Response]
          def fee
            @client.get('signatures/fee')
          end
        end
      end
    end
  end
end
