require 'ark_client/connection'

module ArkClient
  class Client
    def initialize
      @default = 'main'
      @connections = {}
    end

    def connect(connection, name = 'main')
      @connections[name] = connection
    end

    def disconnect(name)
      @connections.delete(name)
    end

    def connection(name)
      @connections[name]
    end

    def get_default_connection()
      @default
    end

    def set_default_connection(name)
      @default = name
    end

    def get_connections
      @connections
    end
  end
end
