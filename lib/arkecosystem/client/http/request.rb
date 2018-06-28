require 'json'
require 'faraday_middleware'

module ArkEcosystem
  module Client
    module HTTP
      module Request
        # Create and send a HTTP "GET" request.
        #
        # @param url [String]
        # @param query [Hash]
        #
        # @return [Faraday::Response]
        def get(url, query = {})
          request(:get, url, query)
        end

        # Create and send a HTTP "POST" request.
        #
        # @param url [String]
        # @param payload [Hash]
        #
        # @return [Faraday::Response]
        def post(url, payload = {})
          request(:post, url, payload)
        end

        # Create and send a HTTP "PUT" request.
        #
        # @param url [String]
        # @param payload [Hash]
        #
        # @return [Faraday::Response]
        def put(url, payload = {})
          request(:put, url, payload)
        end

        # Create and send a HTTP "DELETE" request.
        #
        # @param url [String]
        # @param query [Hash]
        #
        # @return [Faraday::Response]
        def delete(url, query = {})
          request(:delete, url, query)
        end

        private

        # Create and send a HTTP request.
        #
        # @param method [String]
        # @param path [String]
        # @param data [String]
        #
        # @return [Faraday::Response]
        def request(method, path, data)
          JSON.parse(http.send(method, path, data).body)
        end

        # Create a new Faraday instance.
        #
        # @return [Faraday]
        def http
          connection = Faraday.new "#{@host}" do |conn|
            conn.headers['Content-Type'] = 'application/json'

            unless @version.nil?
              conn.headers['API-Version'] = "#{@version}"
            end

            conn.request :json

            conn.adapter Faraday.default_adapter
          end
        end
      end
    end
  end
end
