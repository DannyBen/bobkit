module Bobkit
  module CoffeeBridge
    include FileHelpers

    def compile_js(file, options = {})
      @file = "#{coffee_folder}/#{file}.coffee"
      content = CoffeeScript.compile File.read @file
      output = options[:output]
      create_file "#{js_output_folder}/#{output}.js", content if output
      content
    end
  end
end
