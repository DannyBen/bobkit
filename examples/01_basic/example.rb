# Basic Example

require 'bobkit'
include Bobkit::Tasks

# Convert Slim to HTML string
html = render 'youtube', video: 'hi9tOILaiNs'
puts html

# Convert Slim to HTML file
# Outputs to: output/bobcat.html
render 'youtube', layout: 'default', video: 'hi9tOILaiNs', output: 'bobcat'

# Compile SCSS
# Outputs to output/css/style.css
compile_css 'main', output: 'style'
