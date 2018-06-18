module ArkClient
  class Client
    module Two
      # Methods for the Delegates API
      module Delegates
        class << self
          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def list(parameters = {})
            get("delegates", parameters)
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def get(id)
            get("delegates/#{id}")
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def blocks(id, parameters = {})
            get("delegates/#{id}/blocks", parameters)
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def voters(id, parameters = {})
            get("delegates/#{id}/voters", parameters)
          end
        end
      end
    end
  end
end
