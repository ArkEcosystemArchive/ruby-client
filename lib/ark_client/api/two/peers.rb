module ArkClient
  module API
    module Two
      module Peers
        def list(parameters = {})
          get("peers", parameters)
        end

        def get(id)
          get("peers/#{id}")
        end
      end
    end
  end
end
