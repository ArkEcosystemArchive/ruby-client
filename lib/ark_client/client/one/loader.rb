module ArkClient
  class Client
    module One
      # Methods for the Loader API
      module Loader
        class << self
          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def status
            get('loader/status')
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def sync
            get('loader/status/sync')
          end

          # Short description of what this function does.
          #
          # @param address [String]
          #
          # @return [Hash]
          def autoconfigure
            get('loader/autoconfigure')
          end
        end
      end
    end
  end
end
