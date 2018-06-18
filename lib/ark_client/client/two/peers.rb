module ArkClient
  class Client
    module Two
      module Peers
        class << self
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
end
