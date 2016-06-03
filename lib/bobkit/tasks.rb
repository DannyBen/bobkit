module Bobkit
  module Tasks
    include OptionsBase
    include LocationOptions
    include SassBridge
    include SlimBridge
    include CoffeeBridge
    include I18nBridge
    include MarkdownBridge
    include SlimOptions
    include SassOptions
    include ScopeOptions
    include Assets
  end
end