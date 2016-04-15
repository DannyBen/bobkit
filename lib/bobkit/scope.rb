module Bobkit
  class Scope
    include SlimExtra

    def initialize(scope)
      @scope = scope
    end

    def method_missing(method_name, *arguments, &block)
      if @scope.respond_to?(:key?) and @scope.key?(method_name)
        @scope[method_name]
      elsif @scope.respond_to? method_name
        @scope.send method_name
      else
        super
      end
    end

    def respond_to?(method_name, include_private = false)
      if @scope.respond_to?(:key?) and @scope.key?(method_name)
        true
      elsif @scope.respond_to? method_name
        true
      else
        super
      end
    end
  end
end