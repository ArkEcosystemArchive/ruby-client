module ArkClient
  class Client
    module API
      module One
        module Loader
          def status
            get('api/loader/status')
          end

          def sync
            get('api/loader/status/sync')
          end

          def autoconfigure
            get('api/loader/autoconfigure')
          end
        end
      end
    end
  end
end
