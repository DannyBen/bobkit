module Bobkit
  module OptionsBase
    def use_defaults
      OptionsHandler.instance.options = {}
    end

    def setopt(*args)
      OptionsHandler.instance.setopt(*args)
    end

    def options
      OptionsHandler.instance.options
    end

    class OptionsHandler
      include Singleton

      attr_accessor :options

      def initialize
        @options = {}
      end

      def setopt(key, value = nil, default = nil)
        options[key] = value if value
        options[key] ||= default
        options[key]
      end
    end
  end
end
