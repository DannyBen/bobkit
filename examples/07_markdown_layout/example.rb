# Markdown Layout

require 'bobkit'
include Bobkit::Tasks

# All options pass through to the slim render function so you can
# also use scope context.
nav_links = { Home: '/', Blog: '/blog' }
html = markdown 'article', layout: :default, sidebar: nav_links
puts html

# Or, set the scope using the `scope` function.
scope sidebar: nav_links
html = markdown 'article', layout: :default
puts html
