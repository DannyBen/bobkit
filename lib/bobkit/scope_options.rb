module Bobkit
  module ScopeOptions
    include OptionsBase

    def scope(scope = nil)
      scope ? setopt(:scope, Scope.new(scope)) : options[:scope]
    end
  end
end
