module Bobkit
  module OptionsBase
    def use_defaults
      @@options = {}
    end

    protected

    def setopt(key, value=nil, default=nil)
      options[key] = value if value
      options[key] ||= default
      options[key]
    end

    def options
      @@options ||= {}
    end
  end
end