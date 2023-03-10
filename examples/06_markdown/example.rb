# Markdown

require 'bobkit'
include Bobkit::Tasks

# Convert Markdown to HTML string
html = markdown 'article'
puts html

# Convert Markdown to HTML string with layout
html = markdown 'article', layout: :default
puts html

# Convert Markdown to HTML file with layout
markdown 'article', layout: :default, output: 'article'

# Output is in the output folder
