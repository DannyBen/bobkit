module Bobkit
  module FileHelpers
    def create_folder(path)
      FileUtils.mkdir_p(path) unless File.directory?(path)
    end

    def create_folder_for(path)
      create_folder File.dirname(path)
    end

    def create_file(path, content)
      create_folder_for path
      File.write path, content
    end

    def copy_file(source, target)
      create_folder_for target
      FileUtils.copy_entry source, target
    end
    alias_method :copy_folder, :copy_file
    alias_method :copy_entry, :copy_file
  end
end
