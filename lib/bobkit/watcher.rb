module Bobkit
  module Watcher
    def watch(*args, &block)
      # :nocov:
      FileWatcherHandler.instance.watch *args, &block
      # :nocov:
    end

    def filewatcher
      FileWatcherHandler.instance.filewatcher
    end

    class FileWatcherHandler
      include Singleton
      include LocationOptions

      def watch(paths=nil, &block)
        # :nocov:
        @paths = paths
        filewatcher.watch &block
        # :nocov:
      end

      def filewatcher
        Filewatcher.new(paths)
      end

      protected

      def paths
        @paths ||= all_input_paths
      end

      def all_input_paths
        [ templates_folder, layouts_folder, styles_folder, 
          coffee_folder, assets_folder, locales_folder ]
      end

    end
  end
end
