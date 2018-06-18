module ArkClient
  class Client
    module API
      module Two
        module Webhooks
          def list(parameters = {})
            get("webhooks", parameters)
          end

          def create(parameters)
            post("webhooks", parameters)
          end

          def show(id)
            get("webhooks/#{id}")
          end

          def update(id, parameters)
            put("webhooks/#{id}", parameters)
          end

          def delete(id)
            delete("webhooks/#{id}")
          end
        end
      end
    end
  end
end
