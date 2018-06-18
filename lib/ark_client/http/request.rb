require 'json'
require 'faraday_middleware'

module ArkClient
  module HTTP
    module Request
      # Short description of what this function does.
      #
      # @param address [String]
      #
      # @return [Hash]
      def get(url, options = {})
        request :get, url, options
      end

      # Short description of what this function does.
      #
      # @param address [String]
      #
      # @return [Hash]
      def post(url, options = {})
        request :post, url, options
      end

      # Short description of what this function does.
      #
      # @param address [String]
      #
      # @return [Hash]
      def put(url, options = {})
        request :put, url, options
      end

      # Short description of what this function does.
      #
      # @param address [String]
      #
      # @return [Hash]
      def delete(url, options = {})
        request :delete, url, options
      end

      # Short description of what this function does.
      #
      # @param address [String]
      #
      # @return [Hash]
      def root
        "#{@host}/"
      end

      private

      # Short description of what this function does.
      #
      # @param address [String]
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

      # Short description of what this function does.
      #
      # @param address [String]
      #
      # @return [Hash]
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
