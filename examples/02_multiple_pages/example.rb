# Multiple Output Pages
require 'bobkit'
include Bobkit::Tasks

cat_videos = ['tntOCGkgt98', 'MG8KADiRbOU', 'ny5vGbTfB8c']

puts "---> Generating Cat Pages"
cat_videos.each_with_index do |code, index|
  render 'youtube', layout: 'default', 
    video: code, 
    output: "cat-#{index+1}"
end

puts "---> Copying CSS"
compile_css 'main', output: 'style'

puts "---> Output is in the output folder"