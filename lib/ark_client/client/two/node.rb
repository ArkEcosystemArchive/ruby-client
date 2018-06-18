module ArkClient
  class Client
    module Two
      module Node
        class << self
          def status
            get("node/status")
          end

          def syncing
            get("node/syncing")
          end

          def configuration
            get("node/configuration")
          end
        end
      end
    end
  end
end
