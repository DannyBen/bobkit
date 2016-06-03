# Locales

require 'bobkit'
include Bobkit::Tasks

# Optionally, set locales folder if different than 'locales'
# locales_folder 'path/to/locales_folder'

puts "---> Generating English Pages"
locale :en
puts render 'hello'

puts "---> Generating French Pages"
locale :fr
puts render 'hello'

# In this case, we automatically use the "fairly_local.en.slim" and
# "fairly_local.fr.slim" templates
puts "--> Generating different templates for each locale"
locale :en
puts render 'fairly_local'
locale :fr
puts render 'fairly_local'
