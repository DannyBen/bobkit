module Bobkit
  module SlimBridge
    include FileHelpers

    def render(options={}, extra_options={})
      options = { partial: options }.merge(extra_options) if options.is_a? String
      partial = options.delete :partial
      layout  = options.delete :layout
      output  = options.delete :output
      
      context = options.empty? ? scope : options
      context = Scope.new context if context.is_a? Hash

      content = Slim::Template.new("#{templates_folder}/#{partial}.slim", slim_options).render(context)
      content = Slim::Template.new("#{layouts_folder}/#{layout}.slim", slim_options).render(context) { content } if layout
      create_file "#{output_folder}/#{output}.html", content if output
      content
    end
  end
end