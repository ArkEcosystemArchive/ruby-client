module ArkClient
  class Client
    # Methods for Version 1 of the API
    #
    # @see https://docs.ark.io/v1.0/reference#api-v1-signatures
    module One
      # Methods for the Signatures API
      module Signatures
        class << self
          # Get the signatures fee.
          #
          # @return [Hash]
          def fee
            get('signatures/fee')
          end
        end
      end
    end
  end
end
