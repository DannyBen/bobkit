module Bobkit
  module SassOptions
    def scss_options(options=nil)
      setopt :scss_options, options, scss_defaults
    end
    alias_method :sass_options, :scss_options

    def scss_defaults
      { cache: true, syntax: :scss, style: :nested, 
        load_paths: [styles_folder] } 
    end
  end
end