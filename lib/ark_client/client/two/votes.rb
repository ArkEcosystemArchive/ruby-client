module ArkClient
  class Client
    module Two
      # Methods for the Votes API
      module Votes
        class << self
          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def list(parameters = {})
            get("votes", parameters)
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def get(id)
            get("votes/#{id}")
          end
        end
      end
    end
  end
end
