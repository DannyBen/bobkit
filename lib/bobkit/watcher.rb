module Bobkit
  module Watcher
    def watch(paths=nil, &block)
      # :nocov:
      @paths = paths
      filewatcher.watch &block
      # :nocov:
    end

    def filewatcher
      FileWatcher.new(paths)
    end

    protected

    def paths
      @paths ||= all_input_paths
    end

    def all_input_paths
      [ templates_folder, layouts_folder, styles_folder, 
        coffee_folder, assets_folder ]
    end
  end
end


