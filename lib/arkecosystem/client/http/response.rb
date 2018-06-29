require 'json'

module ArkEcosystem
  module Client
    module HTTP
      # The HTTP response returned by the client.
      class Response
        attr_accessor :response

        def initialize(response)
          @response = response
        end

        def body
          JSON.parse(@response.body)
        end

        def url
          @response.to_hash[:url].to_s
        end

        def to_hash
          @response.to_hash
        end
      end
    end
  end
end
