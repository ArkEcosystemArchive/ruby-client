require 'arkecosystem/client/connection'

module ArkEcosystem
  module Client
    # Client for the Ark Core API
    #
    # @see https://docs.ark.io/v1.0/reference
    class Client
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

      # Get the default connection name.
      #
      # @return [String]
      def get_default_connection()
        @default
      end

      # Set the default connection name.
      #
      # @param name [String]
      #
      # @return [nil]
      def set_default_connection(name)
        @default = name
      end

      # Return all of the created connections.
      #
      # @return [Faraday::Response]
      def get_connections
        @connections
      end
    end
  end
end
