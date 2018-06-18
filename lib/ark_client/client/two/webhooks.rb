module ArkClient
  class Client
    module Two
      # Methods for the Webhooks API
      module Webhooks
        class << self
          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def list(parameters = {})
            get("webhooks", parameters)
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def create(parameters)
            post("webhooks", parameters)
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def get(id)
            get("webhooks/#{id}")
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def update(id, parameters)
            put("webhooks/#{id}", parameters)
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def delete(id)
            delete("webhooks/#{id}")
          end
        end
      end
    end
  end
end
