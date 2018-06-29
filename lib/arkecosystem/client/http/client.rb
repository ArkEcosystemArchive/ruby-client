require 'json'
require 'faraday_middleware'

module ArkEcosystem
  module Client
    module HTTP
      class Client
        attr_accessor :http_client

        # Create a new resource instance.
        #
        # @param config [Hash]
        #
        # @return [ArkEcosystem::Client::API::Two::Wallets]
        def initialize(config)
          @host = config[:host]
          @version = config[:version]
          @http_client = nil
        end

        # Create and send a HTTP "GET" request.
        #
        # @param url [String]
        # @param query [Hash]
        #
        # @return [Faraday::Response]
        def get(url, query = {})
          send_request(:get, url, query)
        end

        # Create and send a HTTP "POST" request.
        #
        # @param url [String]
        # @param payload [Hash]
        #
        # @return [Faraday::Response]
        def post(url, payload = {})
          send_request(:post, url, payload)
        end

        # Create and send a HTTP "PUT" request.
        #
        # @param url [String]
        # @param payload [Hash]
        #
        # @return [Faraday::Response]
        def put(url, payload = {})
          send_request(:put, url, payload)
        end

        # Create and send a HTTP "DELETE" request.
        #
        # @param url [String]
        # @param query [Hash]
        #
        # @return [Faraday::Response]
        def delete(url, query = {})
          send_request(:delete, url, query)
        end

        private

        # Create and send a HTTP request.
        #
        # @param method [String]
        # @param path [String]
        # @param data [String]
        #
        # @return [Faraday::Response]
        def send_request(method, path, data)
          get_http_client.send(method, path, data)
        end

        # Create a new Faraday instance.
        #
        # @return [Faraday]
        def get_http_client
          if @http_client.nil?
            Faraday.new "#{@host}/v#{@version}" do |faraday|
              faraday.headers['Content-Type'] = 'application/json'

              faraday.request :json

              faraday.adapter Faraday.default_adapter
            end
          else
            @http_client
          end
        end
      end
    end
  end
end
