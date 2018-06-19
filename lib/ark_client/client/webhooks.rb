require 'ark_client/http/request'

module ArkClient
  class Client
    # Methods for Webhooks API
    #
    # @see https://docs.ark.io/v1.0/reference#api-webhooks
    class Webhooks
      include ArkClient::HTTP::Request

      # Create a new resource instance.
      #
      # @return [Faraday::Response]
      def initialize(host)
        @host = host
      end

      # Get all webhooks.
      #
      # @param parameters [Hash]
      #
      # @return [Faraday::Response]
      def list(parameters = {})
        get("webhooks", parameters)
      end

      # Create a new webhook.
      #
      # @param parameters [Hash]
      #
      # @return [Faraday::Response]
      def create(parameters)
        post("webhooks", parameters)
      end

      # Get the webhook by the given id.
      #
      # @param id [String]
      #
      # @return [Faraday::Response]
      def show(id)
        get("webhooks/#{id}")
      end

      # Update the webhook by the given id.
      #
      # @param id [String]
      #
      # @return [Faraday::Response]
      def update(id, parameters)
        put("webhooks/#{id}", parameters)
      end

      # Delete the webhook by the given id.
      #
      # @param id [String]
      #
      # @return [Faraday::Response]
      def delete(id)
        delete("webhooks/#{id}")
      end
    end
  end
end
