module Bobkit
  module Tasks
    include OptionsBase
    include LocationOptions
    include SassBridge
    include SlimBridge
    include CoffeeBridge
    include Assets

    def slim_options(options=nil)
      setopt :slim_options, options, slim_defaults
    end

    def scss_options(options=nil)
      setopt :scss_options, options, scss_defaults
    end

    def scope(scope=nil)
      scope ? setopt(:scope, Scope.new(scope)) : options[:scope]
    end

    protected

    def slim_defaults
      { pretty: true, disable_escape: true }
    end

    def scss_defaults
      { cache: true, syntax: :scss, style: :nested, 
        load_paths: [styles_folder] } 
    end

  end
end