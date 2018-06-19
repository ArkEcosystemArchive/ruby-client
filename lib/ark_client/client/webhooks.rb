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
      # @return [Hash]
      def initialize(host)
        @host = host
      end

      # Get all webhooks.
      #
      # @param parameters [Hash]
      #
      # @return [Hash]
      def list(parameters = {})
        get("webhooks", parameters)
      end

      # Create a new webhook.
      #
      # @param parameters [Hash]
      #
      # @return [Hash]
      def create(parameters)
        post("webhooks", parameters)
      end

      # Get the webhook by the given id.
      #
      # @param id [String]
      #
      # @return [Hash]
      def show(id)
        get("webhooks/#{id}")
      end

      # Update the webhook by the given id.
      #
      # @param id [String]
      #
      # @return [Hash]
      def update(id, parameters)
        put("webhooks/#{id}", parameters)
      end

      # Delete the webhook by the given id.
      #
      # @param id [String]
      #
      # @return [Hash]
      def delete(id)
        delete("webhooks/#{id}")
      end
    end
  end
end
