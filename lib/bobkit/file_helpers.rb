module Bobkit
  module FileHelpers
    def create_file(path, content)
      create_folder_for path
      File.write path, content
    end

    def create_folder_for(path)
      dir = File.dirname path
      FileUtils.mkdir_p(dir) unless File.directory?(dir)
    end
  end
end