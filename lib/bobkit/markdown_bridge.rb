module Bobkit
  module MarkdownBridge
    def markdown(file, *args)
      MarkdownHandler.instance.render file, *args
    end

    class MarkdownHandler
      include Singleton
      # include FileHelpers
      # include LocationOptions

      def render(file, options={})
        markdown = RDiscount.new file_content file
        markdown.to_html
      end

      private

      def file_content(basename)
        File.read markdown_file basename
      end

      def markdown_file(basename)
        markdown_folder = 'markdown'
        "#{markdown_folder}/#{basename}.md"
      end
    end

  end
end
