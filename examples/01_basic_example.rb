# Basic Example

# Require Bobkit
require 'bobkit'
include Bobkit::Actions

# Convert Slim to HTML
html = render 'partial', movie: 'asd', actor: 'asdasd'
