module ArkClient
  class Client
    module Two
      # Methods for the Transactions API
      module Transactions
        class << self
          # Short description of what this function does.
          #
          # @param parameters [Hash]
          #
          # @return [Hash]
          def list(parameters = {})
            get("transactions", parameters)
          end

          # Short description of what this function does.
          #
          # @param parameters [Hash]
          #
          # @return [Hash]
          def create(parameters)
            post("transactions", parameters)
          end

          # Short description of what this function does.
          #
          # @param id [String]
          #
          # @return [Hash]
          def get(id)
            get("transactions/#{id}")
          end

          # Short description of what this function does.
          #
          # @param parameters [Hash]
          #
          # @return [Hash]
          def list_unconfirmed(parameters = {})
            get("transactions/unconfirmed", parameters)
          end

          # Short description of what this function does.
          #
          # @param id [String]
          #
          # @return [Hash]
          def get_unconfirmed(id)
            get("transactions/unconfirmed/#{id}")
          end

          # Short description of what this function does.
          #
          # @param parameters [Hash]
          #
          # @return [Hash]
          def search(parameters)
            post("transactions/search", parameters)
          end

          # Short description of what this function does.
          #
          # @return [Hash]
          def types
            get("transactions/types")
          end
        end
      end
    end
  end
end
