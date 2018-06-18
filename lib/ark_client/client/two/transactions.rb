module ArkClient
  class Client
    module Two
      module Transactions
        class << self
          def list(parameters = {})
            get("transactions", parameters)
          end

          def create(parameters)
            post("transactions", parameters)
          end

          def get(id)
            get("transactions/#{id}")
          end

          def list_unconfirmed(parameters = {})
            get("transactions/unconfirmed", parameters)
          end

          def get_unconfirmed(id)
            get("transactions/unconfirmed/#{id}")
          end

          def search(parameters)
            post("transactions/search", parameters)
          end

          def types
            get("transactions/types")
          end
        end
      end
    end
  end
end
