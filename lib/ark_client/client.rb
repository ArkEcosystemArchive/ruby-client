require 'ark_client/connection'

module ArkClient
  class Client
    # Short description of what this function does.
    #
    # @param address [String]
    #
    # @return [Hash]
    def initialize
      @default = 'main'
      @connections = {}
    end

    # Short description of what this function does.
    #
    # @param address [String]
    #
    # @return [Hash]
    def connect(connection, name = 'main')
      @connections[name] = connection
    end

    # Short description of what this function does.
    #
    # @param address [String]
    #
    # @return [Hash]
    def disconnect(name)
      @connections.delete(name)
    end

    # Short description of what this function does.
    #
    # @param address [String]
    #
    # @return [Hash]
    def connection(name)
      @connections[name]
    end

    # Short description of what this function does.
    #
    # @param address [String]
    #
    # @return [Hash]
    def get_default_connection()
      @default
    end

    # Short description of what this function does.
    #
    # @param address [String]
    #
    # @return [Hash]
    def set_default_connection(name)
      @default = name
    end

    # Short description of what this function does.
    #
    # @param address [String]
    #
    # @return [Hash]
    def get_connections
      @connections
    end
  end
end
