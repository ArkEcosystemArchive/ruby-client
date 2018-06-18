module ArkClient
  module API
    module Two
      module Node
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
