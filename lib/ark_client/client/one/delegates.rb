module ArkClient
  class Client
    module One
      # Methods for the Delegates API
      module Delegates
        class << self
          # Short description of what this function does.
          #
          # @return [Hash]
          def count
            get('delegates/count')
          end

          # Short description of what this function does.
          #
          # @param q [String]
          # @param parameters [Hash]
          #
          # @return [Hash]
          def search(q, parameters = {})
            get('delegates/search', {q: q}.merge(parameters))
          end

          # Short description of what this function does.
          #
          # @param address [String]
          # @param parameters [Hash]
          #
          # @return [Hash]
          def voters(public_key, parameters = {})
            get('delegates/voters', {publicKey: public_key}.merge(parameters))
          end

          # Short description of what this function does.
          #
          # @param parameters [Hash]
          #
          # @return [Hash]
          def delegate(parameters = {})
            get('delegates/get', parameters)
          end

          # Short description of what this function does.
          #
          # @param parameters [Hash]
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
          # @param generator_public_key [String]
          #
          # @return [Hash]
          def forged_by_account(generator_public_key)
            get('delegates/forging/getForgedByAccount', {generatorPublicKey: generator_public_key})
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
          # @param public_key [String]
          # @param parameters [Hash]
          #
          # @return [Hash]
          def forging_status(public_key, parameters = {})
            post('delegates/forging/disable', {:publicKey => public_key}.merge(parameters))
          end
        end
      end
    end
  end
end
