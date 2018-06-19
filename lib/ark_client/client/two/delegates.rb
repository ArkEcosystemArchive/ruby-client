module ArkClient
  class Client
    # Methods for Version 2 of the API
    #
    # @see https://docs.ark.io/v1.0/reference#api-v2-delegates
    module Two
      # Methods for the Delegates API
      module Delegates
        class << self
          # Get all delegates.
          #
          # @param parameters [Hash]
          #
          # @return [Hash]
          def list(parameters = {})
            get("delegates", parameters)
          end

          # Get the delegate by the given id.
          #
          # @param id [String]
          #
          # @return [Hash]
          def show(id)
            get("delegates/#{id}")
          end

          # Get the blocks for the given delegate.
          #
          # @param id [String]
          # @param parameters [Hash]
          #
          # @return [Hash]
          def blocks(id, parameters = {})
            get("delegates/#{id}/blocks", parameters)
          end

          # Get the votes for the given delegate.
          #
          # @param id [String]
          # @param parameters [Hash]
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
