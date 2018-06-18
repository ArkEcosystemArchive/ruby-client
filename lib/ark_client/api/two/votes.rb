module ArkClient
  class Client
    module API
      module Two
        module Votes
          class << self
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
  end
end
