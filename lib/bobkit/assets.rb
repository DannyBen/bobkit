module Bobkit
  module Assets
    include FileHelpers

    def copy_asset(source, target = nil)
      if target
        target = "#{output_folder}/#{target}"
      else
        target = "#{assets_output_folder}/#{source}"
      end
      copy_entry "#{assets_folder}/#{source}", target
    end
  end
end
