module Bobkit
  module SassExtra
    include FileHelpers

    def compile_css(file, options={})
      @file = "#{styles_folder}/#{file}.scss"
      content = Sass::Engine.new(File.read(@file), scss_options).render
      output = options[:output]
      create_file "#{css_output_folder}/#{output}.css", content if output
      content
    end
  end
end