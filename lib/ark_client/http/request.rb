require 'json'
require 'faraday_middleware'

module ArkClient
  module HTTP
    module Request
      # Create and send a HTTP "GET" request.
      #
      # @param url [String]
      # @param query [Hash]
      #
      # @return [Hash]
      def get(url, query = {})
        request :get, url, query
      end

      # Create and send a HTTP "POST" request.
      #
      # @param url [String]
      # @param payload [Hash]
      #
      # @return [Hash]
      def post(url, payload = {})
        request :post, url, payload
      end

      # Create and send a HTTP "PUT" request.
      #
      # @param url [String]
      # @param payload [Hash]
      #
      # @return [Hash]
      def put(url, payload = {})
        request :put, url, payload
      end

      # Create and send a HTTP "DELETE" request.
      #
      # @param url [String]
      # @param query [Hash]
      #
      # @return [Hash]
      def delete(url, query = {})
        request :delete, url, query
      end

      # Get the host (root) of the request url.
      #
      # @return [String]
      def root
        "#{@host}/"
      end

      private

      # Create and send a HTTP request.
      #
      # @param method [String]
      # @param path [String]
      # @param data [String]
      #
      # @return [Hash]
      def request(method, path, data)
        request = http.send(method, path, data)

        response = JSON.parse request.body

        if response['success'] == false
          raise response['error']
        end

        if response['status'] == false
          raise response['error']
        end

        response
      end

      # Create a new Faraday instance.
      #
      # @return [Faraday]
      def http
        connection = Faraday.new root do |conn|
          conn.headers['Content-Type'] = 'application/json'
          conn.headers['API-Version'] = "#{@version}"

          conn.request :json

          conn.adapter Faraday.default_adapter
        end
      end
    end
  end
end
