module ArkClient
  class Client
    module One
      module Loader
        class << self
          def status
            get('loader/status')
          end

          def sync
            get('loader/status/sync')
          end

          def autoconfigure
            get('loader/autoconfigure')
          end
        end
      end
    end
  end
end
