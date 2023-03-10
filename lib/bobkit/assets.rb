module Bobkit
  module Assets
    include FileHelpers

    def copy_asset(source, target = nil)
      target = if target
        "#{output_folder}/#{target}"
      else
        "#{assets_output_folder}/#{source}"
      end

      copy_entry "#{assets_folder}/#{source}", target
    end
  end
end
