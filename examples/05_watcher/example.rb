# Locales Example

require 'bobkit'
include Bobkit::Tasks
include Bobkit::Watcher

# Watch all input folders for changes. Ctrl+C to abort.
watch do |filename, event|
  puts "#{event}: #{filename}"
  regenerate
end

def regenerate
  puts 'Generating...'
  # Your generation logic here
end
