module ArkClient
  module Config
    attr_accessor :host, :api_version

    class << self
      def keys
        @keys ||= [
          :host,
          :api_version
        ]
      end
    end

    # Set configuration options using a block
    def configure
      yield self
    end

    # Reset configuration options to default values
    def reset!
      ArkClient::Config.keys.each do |key|
        instance_variable_set(:"@#{key}", ArkClient::Default.options[key])
      end
      self
    end
    alias setup reset!

    # Compares client options to a Hash of requested options
    #
    # @param opts [Hash] Options to compare with current client options
    # @return [Boolean]
    def same_options?(opts)
      opts.hash == options.hash
    end

    private

    def options
      Hash[ArkClient::Config.keys.map{|key| [key, instance_variable_get(:"@#{key}")]}]
    end
  end
end
