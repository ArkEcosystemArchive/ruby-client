require 'json'
require 'faraday_middleware'

module ArkClient
  module Connection
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
      "http://#{@ip}:#{@port}/"
    end

    def last_response
      @last_response if defined? @last_response
    end

    private

    def request(method, path, data)
      request = http.send(method, path, data)

      @last_response = response = JSON.parse request.body

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
        conn.headers[:nethash] = @nethash
        conn.headers[:version] = @version
        conn.headers[:port] = "1"

        conn.request :json

        conn.adapter Faraday.default_adapter
      end
    end
  end
end
