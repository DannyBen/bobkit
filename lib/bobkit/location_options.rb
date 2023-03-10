module Bobkit
  module LocationOptions
    include OptionsBase

    def root_folder(path = nil)
      setopt :root_folder, path, '.'
    end

    def templates_folder(path = nil)
      setopt :templates_folder, path, "#{root_folder}/templates"
    end

    def markdown_folder(path = nil)
      setopt :markdown_folder, path, "#{root_folder}/markdown"
    end

    def styles_folder(path = nil)
      setopt :styles_folder, path, "#{root_folder}/styles"
    end

    def coffee_folder(path = nil)
      setopt :coffee_folder, path, "#{root_folder}/coffee"
    end

    def output_folder(path = nil)
      setopt :output_folder, path, "#{root_folder}/output"
    end

    def assets_folder(path = nil)
      setopt :assets_folder, path, "#{root_folder}/assets"
    end

    def locales_folder(path = nil)
      setopt :locales_folder, path, "#{root_folder}/locales"
    end

    def layouts_folder(path = nil)
      setopt :layouts_folder, path, "#{templates_folder}/layouts"
    end

    def css_output_folder(path = nil)
      setopt :css_output_folder, path, "#{output_folder}/css"
    end

    def js_output_folder(path = nil)
      setopt :js_output_folder, path, "#{output_folder}/js"
    end

    def assets_output_folder(path = nil)
      setopt :assets_output_folder, path, "#{output_folder}/assets"
    end
  end
end
