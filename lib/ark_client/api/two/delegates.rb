module ArkClient
  class Client
    module API
      module Two
        module Delegates
          class << self
            def list(parameters = {})
              get("delegates", parameters)
            end

            def get(id)
              get("delegates/#{id}")
            end

            def blocks(id, parameters = {})
              get("delegates/#{id}/blocks", parameters)
            end

            def voters(id, parameters = {})
              get("delegates/#{id}/voters", parameters)
            end
          end
        end
      end
    end
  end
end
