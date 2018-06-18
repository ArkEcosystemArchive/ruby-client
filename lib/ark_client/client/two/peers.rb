module ArkClient
  class Client
    module Two
      # Methods for the Peers API
      module Peers
        class << self
          # Short description of what this function does.
          #
          # @param parameters [Hash]
          #
          # @return [Hash]
          def list(parameters = {})
            get("peers", parameters)
          end

          # Short description of what this function does.
          #
          # @param id [String]
          #
          # @return [Hash]
          def get(id)
            get("peers/#{id}")
          end
        end
      end
    end
  end
end
