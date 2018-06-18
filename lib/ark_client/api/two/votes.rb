module ArkClient
  module API
    module Two
      module Votes
        def list(parameters = {})
          get("votes", parameters)
        end

        def get(id)
          get("votes/#{id}")
        end
      end
    end
  end
end
