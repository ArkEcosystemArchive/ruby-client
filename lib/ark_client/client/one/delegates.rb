module ArkClient
  class Client
    module One
      # Methods for the Delegates API
      module Delegates
        class << self
          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def count
            get('delegates/count')
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def search(q, parameters = {})
            get('delegates/search',{q: q}.merge(parameters))
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def voters(public_key, parameters = {})
            get('delegates/voters',{publicKey: public_key}.merge(parameters))
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def delegate(parameters = {})
            get('delegates/get', parameters)
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def delegates(parameters = {})
            get('delegates', parameters)
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def delegate_fee
            get('delegates/fee')
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def forged_by_account(generator_public_key)
            get('delegates/forging/getForgedByAccount',{generatorPublicKey: generator_public_key})
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def next_forgers
            get('delegates/getNextForgers')
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def forging_status(publicKey, parameters = {})
            post('delegates/forging/disable',{:publicKey => publicKey}.merge(parameters))
          end
        end
      end
    end
  end
end
