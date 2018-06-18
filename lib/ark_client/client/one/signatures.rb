module ArkClient
  class Client
    module One
      module Signatures
        class << self
          def fee
            get('signatures/fee')
          end
        end
      end
    end
  end
end
