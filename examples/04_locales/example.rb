# Locales

require 'bobkit'
include Bobkit::Tasks

# Optionally, set locales folder if different than 'locales'
# locales_folder 'path/to/locales_folder'

# Generate a page in English
locale :en
puts render 'hello'

# Generate a page in French
locale :fr
puts render 'hello'

# Use localized templates.
# In this case, we automatically use the "fairly_local.en.slim" and
# "fairly_local.fr.slim" templates
locale :en
puts render 'fairly_local'
locale :fr
puts render 'fairly_local'
