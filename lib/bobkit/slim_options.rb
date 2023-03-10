module Bobkit
  module SlimOptions
    def slim_options(options = nil)
      setopt :slim_options, options, slim_defaults
    end

    def slim_defaults
      { pretty: true, disable_escape: true }
    end
  end
end
