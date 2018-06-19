require 'ark_client/http/request'

module ArkClient
  class Client
    # Methods for Version 1 of the API
    #
    # @see https://docs.ark.io/v1.0/reference#api-v1-signatures
    module One
      # Methods for the Signatures API
      class Signatures
        include ArkClient::HTTP::Request

        # Create a new resource instance.
        #
        # @param host [String]
        #
        # @return [ArkClient::Client::One::Signatures]
        def initialize(host)
          @host = host
          @version = 1
        end

        # Get the signatures fee.
        #
        # @return [Hash]
        def fee
          get('signatures/fee')
        end
      end
    end
  end
end
