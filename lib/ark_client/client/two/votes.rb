module ArkClient
  class Client
    # Methods for Version 2 of the API
    #
    # @see https://docs.ark.io/v1.0/reference#api-v2-votes
    module Two
      # Methods for the Votes API
      module Votes
        class << self
          # Get all votes.
          #
          # @param parameters [Hash]
          #
          # @return [Hash]
          def list(parameters = {})
            get("votes", parameters)
          end

          # Get the vote by the given id.
          #
          # @param id [String]
          #
          # @return [Hash]
          def show(id)
            get("votes/#{id}")
          end
        end
      end
    end
  end
end
