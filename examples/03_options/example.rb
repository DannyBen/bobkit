# Options

require 'bobkit'
include Bobkit::Tasks

# Set options (these are only partial, and the defaults)
templates_folder     'templates'
layouts_folder       "#{templates_folder}/layouts"
styles_folder        'styles'
output_folder        'output'
css_output_folder    "#{output_folder}/css"
js_output_folder     "#{output_folder}/js"

# Generate the site
render 'youtube', layout: 'default', video: 'tntOCGkgt98', output: 'cat'
compile_css 'main', output: 'style'
compile_js 'main', output: 'script'

# Output is in the output folder
