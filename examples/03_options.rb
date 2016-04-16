# Multiple Output Pages
require 'bobkit'
include Bobkit::Actions

# Set options (these are only partial, and the defaults)
templates_folder     'templates'
layouts_folder       "#{templates_folder}/layouts"
styles_folder        'styles'
output_folder        'output'
css_output_folder    "#{output_folder}/css"
js_output_folder     "#{output_folder}/js"

# Generate the site
puts "---> Generating Cat Pages"
render 'youtube', layout: 'default', video: 'tntOCGkgt98', output: "cat"

puts "---> Copying CSS"
compile_css 'main', output: 'style'

puts "---> Copying JS"
compile_js 'main', output: 'script'

puts "---> Output is in the output folder"