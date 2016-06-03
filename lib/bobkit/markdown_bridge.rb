module Bobkit
  module MarkdownBridge
    def markdown(file, *args)
      MarkdownHandler.instance.compile file, *args
    end

    class MarkdownHandler
      include Singleton
      include LocationOptions

      def compile(file, options={})
        markdown = RDiscount.new file_content file
        content = markdown.to_html
        options[:content] = content
        content = SlimBridge.render options if options[:layout]
        content
      end

      private

      def file_content(basename)
        File.read markdown_file basename
      end

      def markdown_file(basename)
        "#{markdown_folder}/#{basename}.md"
      end
    end

  end
end
