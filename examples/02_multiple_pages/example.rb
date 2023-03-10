# Multiple Output Pages
require 'bobkit'
include Bobkit::Tasks

cat_videos = %w[tntOCGkgt98 MG8KADiRbOU ny5vGbTfB8c]

# Generate several pages with YouTube videos
cat_videos.each_with_index do |code, index|
  render 'youtube', layout: 'default', video: code, output: "cat-#{index + 1}"
end

# Generate CSS
compile_css 'main', output: 'style'

# Output is in the output folder
