module Bobkit
  module SassBridge
    include FileHelpers

    def compile_css(file, options={})
      @file = "#{styles_folder}/#{file}.scss"
      extended_options = scss_options.merge({ filename: @file })
      content = Sass::Engine.new(File.read(@file), extended_options).render
      output = options[:output]
      create_file "#{css_output_folder}/#{output}.css", content if output
      content
    end
  end
end