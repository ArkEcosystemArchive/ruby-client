module ArkClient
  class Client
    module One
      # Methods for the Signatures API
      module Signatures
        class << self
          # Short description of what this function does.
          #
          # @param address [String]
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
