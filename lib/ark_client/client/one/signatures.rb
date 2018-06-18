module ArkClient
  class Client
    module One
      # Methods for the Signatures API
      module Signatures
        class << self
          # Short description of what this function does.
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
