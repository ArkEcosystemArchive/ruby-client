require 'json'
require 'faraday_middleware'

module ArkClient
  module HTTP
    module Request
      def get(url, options = {})
        request :get, url, options
      end

      def post(url, options = {})
        request :post, url, options
      end

      def put(url, options = {})
        request :put, url, options
      end

      def delete(url, options = {})
        request :delete, url, options
      end

      def root
        "#{@host}/"
      end

      private

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
