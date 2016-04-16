# Basic Example
require 'bobkit'
include Bobkit::Tasks

puts "---> Convert Slim to HTML string"
html = render 'youtube', video: 'hi9tOILaiNs'
puts html

puts "---> Convert Slim to HTML file"
render 'youtube', layout: 'default', video: 'hi9tOILaiNs', output: 'bobcat'
puts "     View the file in output/bobcat.html"

puts "---> Compile SCSS"
compile_css 'main', output: 'style'
puts "     The file is now in output/css/style.css"