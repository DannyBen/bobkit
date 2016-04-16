Bobkit - Site Generation Toolkit
==================================================

[![Gem](https://img.shields.io/gem/v/bobkit.svg?style=flat-square)](https://rubygems.org/gems/bobkit)
[![Travis](https://img.shields.io/travis/DannyBen/bobkit.svg?style=flat-square)](https://travis-ci.org/DannyBen/bobkit)
[![Code Climate](https://img.shields.io/codeclimate/github/DannyBen/bobkit.svg?style=flat-square)](https://codeclimate.com/github/DannyBen/bobkit)
[![Gemnasium](https://img.shields.io/gemnasium/DannyBen/bobkit.svg?style=flat-square)](https://gemnasium.com/DannyBen/bobkit)

---

Bobkit is a lightweight tookit for generating static websites with Slim, SCSS
and CoffeeScript.

The design intentions were:

- To provide easy to use wrapper methods for Slim, SCSS and CoffeeScript
- To not impose any directory structure (this is not a blog generator...).
- To allow you to use standard ruby for generating your site.
- To be packaged as a library, and not a command line tool.
- To provide sensible default locations that are easily overridable.
- To add `render` and `layout` support to Slim (Rails-like).

---



Install
--------------------------------------------------

`gem install bobkit`

Or with Bundler:

`gem 'bobkit'`



Usage
--------------------------------------------------

The basic usage pattern is this:

- Create a ruby file and include Bobkit
- Create your input folders (for Slim templates, SCSS files etc.) 
  wherever you want (or use the default locations, see below).
- In your Ruby script, call Bobkit methods to generate your site.

### Example

```ruby
require 'bobkit'
include Bobkit::Actions

# Convert Slim to HTML string
html = render 'youtube', video: 'hi9tOILaiNs'
puts html

# Convert Slim to HTML file
# This will use 'templates/youtube.slim', with the layout file
# `templates/layouts/default.slim` and will generate 'output/bobcat.html'.
render 'youtube', layout: 'default', video: 'hi9tOILaiNs', output: 'bobcat'

# Compile SCSS
# This will convert `styles/main.scss` to `output/css/style.css`
compile_css 'main', output: 'style'
```

See more examples in the [Examples folder][1]


Reference
--------------------------------------------------

### Setting folder locations and options

Bobkit has defaults for everything, but you can easily change them.
Each of these methods can be called with or without a parameter. When
called without a parameter, it will simply return the value.

```ruby
# Location of source Slim templates. Default: "templates"
templates_folder 'views'

# Location of source Slim templates for layouts. 
# Default: "#{templates_folder}/layouts"
layouts_folder 'my_layouts'

# Location of the source SCSS files. Default: "styles"
styles_folder 'styles'

# Output location. Default: "output"
output_folder 'site'

# Output location for CSS. Default: "#{output_folder}/css"
css_output_folder "#{output_folder}/stylesheets"

# Location of other source asset files (images etc.). Default: 'assets'
assets_folder 'files'

# Output location for assets. Default: "#{output_folder}/assets"
assets_output_folder 'images'

# Options for Slim generation.
slim_options pretty: true, disable_escape: true

# Options for SCSS generation.
scss_options cache: true, syntax: :scss, style: :nested

# Restore all settings to defaults
use_defaults
```


### Slim 

```ruby
# You can set a scope before calling any `render`
scope CatVideo.new
html = render 'cats'

# You can use a hash as scope
scope email: 'bob@kit.com', name: 'Bob'
html = render 'user'

# You can send a scope directly to `render`
html = render 'user', email: 'bob@kit.com', name: 'Bob'

# You can render with a layout
html = render 'user', layout: 'default', email: 'bob@kit.com'

# You can save to a file in the `output_folder`
render 'user', layout: 'default', email: 'bob@kit.com', output: 'bob'
```


### SCSS

```ruby
# You can compile SCSS to a CSS string, to do as you please with it
css = compile_css 'style'

# You can compile SCSS directly to a file
compile_css 'style', output: 'main'
```

### CoffeeScript

```ruby
# You can compile CoffeeScript to a Javascript string
js = compile_js 'script'

# You can compile CoffeeScript directly to a file
compile_js 'script', output: 'main'
```


### Asset helpers

Anything other than CSS, Javascript and HTML is considered an asset.
These are some helpers to help you move them acount from input to output
folders.

```ruby
# Copy a file from the `assets_folder` to the `assets_output_folder`
copy_asset 'presskit.zip'

# Copy a folder
copy_asset 'images'
```


### Low level file and folder helpers

If you want more control over what the `copy_asset` method provides, you
can use any of these methods.

```ruby
# Copy a file - needed parent folders will be created as needed
copy_file 'exact/path.zip', 'exact/output/file.zip'

# Copy a folder - needed parent folders will be created as needed
copy_file 'exact/path', 'exact/output/folder'

# Create folder, and any of the needed parent folders
create_folder 'my_folder'

# Create folder for a file, with any of the needed parent folders
create_folder_for 'some/folder/with/file.png'
```


Todo
--------------------------------------------------

- [ ] CoffeeScript
- [ ] YAML loader (data_folder?)
- [ ] CSV Loader (data_folder?)
- [ ] Verify SCSS works as in Rails (imports etc)
- [ ] Maybe: Include file watcher and auto generate
- [ ] Maybe: Render from/to Markdown
- [ ] Maybe: Render to JSON


[1]: https://github.com/DannyBen/bobkit/tree/master/examples
