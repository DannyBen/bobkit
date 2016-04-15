module Bobkit
  module Actions
    include SassExtra
    include SlimExtra

    def templates_folder(path=nil)
      setopt :templates_folder, path, 'templates'
    end

    def layouts_folder(path=nil)
      setopt :layouts_folder, path, "#{templates_folder}/layouts"
    end

    def styles_folder(path=nil)
      setopt :styles_folder, path, 'styles'
    end

    def output_folder(path=nil)
      setopt :output_folder, path, 'output'
    end

    def css_output_folder(path=nil)
      setopt :css_output_folder, path, "#{output_folder}/css"
    end

    def slim_options(options=nil)
      setopt :slim_options, options, slim_defaults
    end

    def scss_options(options=nil)
      setopt :scss_options, options, scss_defaults
    end

    def scope(scope=nil)
      scope ? setopt(:scope, Scope.new(scope)) : options[:scope]
    end

    def use_defaults
      @@options = {}
    end

    protected

    def slim_defaults
      { pretty: true, disable_escape: true }
    end

    def scss_defaults
      { cache: true, syntax: :scss, style: :nested } 
    end

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