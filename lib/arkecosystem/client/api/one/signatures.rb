require 'arkecosystem/client/http/request'

module ArkEcosystem
  module Client
    class API
      # Methods for Version 1 of the API
      #
      # @see https://docs.ark.io/v1.0/reference#api-v1-signatures
      module One
        # Methods for the Signatures API
        class Signatures
          include ArkEcosystem::Client::HTTP::Request

          # Create a new resource instance.
          #
          # @param host [String]
          #
          # @return [ArkEcosystem::Client::API::One::Signatures]
          def initialize(host)
            @host = host
            @version = 1
          end

          # Get the signatures fee.
          #
          # @return [Faraday::Response]
          def fee
            get('signatures/fee')
          end
        end
      end
    end
  end
end
