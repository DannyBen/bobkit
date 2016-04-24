module Bobkit
  module LocationOptions
    include OptionsBase

    def templates_folder(path=nil)
      setopt :templates_folder, path, 'templates'
    end

    def layouts_folder(path=nil)
      setopt :layouts_folder, path, "#{templates_folder}/layouts"
    end

    def styles_folder(path=nil)
      setopt :styles_folder, path, 'styles'
    end

    def coffee_folder(path=nil)
      setopt :coffee_folder, path, 'coffee'
    end

    def output_folder(path=nil)
      setopt :output_folder, path, 'output'
    end

    def css_output_folder(path=nil)
      setopt :css_output_folder, path, "#{output_folder}/css"
    end

    def js_output_folder(path=nil)
      setopt :js_output_folder, path, "#{output_folder}/js"
    end

    def assets_folder(path=nil)
      setopt :assets_folder, path, 'assets'
    end

    def assets_output_folder(path=nil)
      setopt :assets_output_folder, path, "#{output_folder}/assets"
    end

    def locales_folder(path=nil)
      setopt :locales_folder, path, "locales"
    end
  end
end