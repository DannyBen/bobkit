module Bobkit
  module SassBridge
    include FileHelpers

    def compile_css(file, output: nil, source_map: true)
      file = "#{styles_folder}/#{file}.scss"
      sass = Sasstool::Renderer.new file

      if output
        create_file "#{css_output_folder}/#{output}.css", sass.render

        if source_map
          create_file "#{css_output_folder}/#{output}.css.map", sass.source_map
        end
      end

      sass.render
    end
  end
end