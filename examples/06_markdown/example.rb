# Markdown
require 'bobkit'
include Bobkit::Tasks

puts "---> Convert Markdown to HTML string"
html = markdown 'article'
puts html

puts "---> Convert Markdown to HTML string with layout"
html = markdown 'article', layout: :default
puts html

puts "---> Convert Markdown to HTML file with layout"
markdown 'article', layout: :default, output: 'article'
