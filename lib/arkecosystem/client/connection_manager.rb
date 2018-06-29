require 'arkecosystem/client/connection'

module ArkEcosystem
  module Client
    # Manager that holds all connections
    #
    # @see https://docs.ark.io/v1.0/reference
    class ConnectionManager
      attr_accessor :default, :connections

      # Create a new client instance.
      #
      # @return [Faraday::Response]
      def initialize
        @default = 'main'
        @connections = {}
      end

      # Connection to the given connection.
      #
      # @param connection [ArkEcosystem::Client::Connection]
      # @param name [String]
      #
      # @return [Faraday::Response]
      def connect(connection, name = 'main')
        @connections[name] = connection
      end

      # Disconnect from the given connection.
      #
      # @param name [String]
      #
      # @return [nil]
      def disconnect(name)
        @connections.delete(name)
      end

      # Get a connection instance.
      #
      # @param name [String]
      #
      # @return [ArkEcosystem::Client::Connection]
      def connection(name)
        @connections[name]
      end
    end
  end
end
