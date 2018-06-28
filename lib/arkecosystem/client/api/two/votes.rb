require 'arkecosystem/client/http/request'

module ArkEcosystem
  module Client
    class API
      # Methods for Version 2 of the API
      #
      # @see https://docs.ark.io/v1.0/reference#api-v2-votes
      module Two
        # Methods for the Votes API
        class Votes
          include ArkEcosystem::Client::HTTP::Request

          # Create a new resource instance.
          #
          # @param host [String]
          #
          # @return [ArkEcosystem::Client::API::Two::Votes]
          def initialize(host)
            @host = host
            @version = 2
          end

          # Get all votes.
          #
          # @param parameters [Hash]
          #
          # @return [Faraday::Response]
          def list(parameters = {})
            get("votes", parameters)
          end

          # Get the vote by the given id.
          #
          # @param id [String]
          #
          # @return [Faraday::Response]
          def show(id)
            get("votes/#{id}")
          end
        end
      end
    end
  end
end