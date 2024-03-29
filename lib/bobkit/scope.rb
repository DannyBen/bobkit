module Bobkit
  class Scope
    include SlimBridge
    include I18nMixin

    attr_reader :scope

    def initialize(scope = nil)
      @scope = scope || {}
    end

    def method_missing(method_name, *arguments, &)
      if scope.respond_to?(:key?) && scope.has_key?(method_name)
        scope[method_name]
      elsif scope.respond_to? method_name
        scope.send method_name, *arguments
      else
        super
      end
    end

    def respond_to_missing?(method_name, include_private = false)
      if (scope.respond_to?(:key?) && scope.has_key?(method_name)) || scope.respond_to?(method_name)
        true
      else
        super
      end
    end
    alias have? respond_to?
  end
end
