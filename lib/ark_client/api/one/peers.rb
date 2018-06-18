module ArkClient
  class Client
    module API
      module One
        module Peers
          class << self
            def peer(ip, port)
              get('peers/get', {:ip => ip, :port => port})
            end

            def peers(parameters = {})
              get('peers', parameters)
            end

            def version
              get('peers/version')
            end
          end
        end
      end
    end
  end
end
