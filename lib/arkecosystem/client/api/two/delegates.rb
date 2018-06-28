require 'arkecosystem/client/http/request'

module ArkEcosystem
  module Client
    class API
      # Methods for Version 2 of the API
      #
      # @see https://docs.ark.io/v1.0/reference#api-v2-delegates
      module Two
        # Methods for the Delegates API
        class Delegates
          include ArkEcosystem::Client::HTTP::Request

          # Create a new resource instance.
          #
          # @param host [String]
          #
          # @return [ArkEcosystem::Client::API::Two::Delegates]
          def initialize(host)
            @host = host
            @version = 2
          end

          # Get all delegates.
          #
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def list(parameters = {})
            get("delegates", parameters)
          end

          # Get the delegate by the given id.
          #
          # @param id [String]
          #
          # @return [Faraday::Response]
          def show(id)
            get("delegates/#{id}")
          end

          # Get the blocks for the given delegate.
          #
          # @param id [String]
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def blocks(id, parameters = {})
            get("delegates/#{id}/blocks", parameters)
          end

          # Get the votes for the given delegate.
          #
          # @param id [String]
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def voters(id, parameters = {})
            get("delegates/#{id}/voters", parameters)
          end
        end
      end
    end
  end
end
