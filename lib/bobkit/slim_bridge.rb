module Bobkit
  module SlimBridge
    def render(*args)
      SlimHandler.instance.render *args
    end

    class SlimHandler
      include Singleton
      include FileHelpers
      include SlimOptions
      include LocationOptions
      include ScopeOptions
      include I18nBridge

      def render(options={}, extra_options={})
        options = { partial: options }.merge(extra_options) if options.is_a? String
        partial = options.delete :partial
        layout  = options.delete :layout
        output  = options.delete :output
        content = options.delete :content
        
        context = options.empty? ? scope : options
        if context.is_a? Hash or !context
          context = Scope.new context 
        end

        content ||= Slim::Template.new(partial_filename(partial), slim_options).render(context)
        content = Slim::Template.new(layout_filename(layout), slim_options).render(context) { content } if layout
        create_file "#{output_folder}/#{output}.html", content if output
        content
      end

      private

      def partial_filename(partial)
        localized_template templates_folder, partial
      end

      def layout_filename(layout)
        localized_template layouts_folder, layout
      end

      def localized_template(folder, basename)
        preferred = "#{folder}/#{basename}.#{locale}.slim"
        return preferred if File.exist? preferred
        "#{folder}/#{basename}.slim"
      end
    end

  end
end
