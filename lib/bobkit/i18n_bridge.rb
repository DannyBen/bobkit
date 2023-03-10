module Bobkit
  module I18nBridge
    include I18nMixin

    def locale(language = nil)
      I18nHandler.instance.locale language if language
      I18n.locale
    end

    class I18nHandler
      include Singleton
      include LocationOptions

      def initialize
        I18n.load_path = Dir["#{locales_folder}/**/*.yml"]
        I18n.backend.load_translations
      end

      def locale(language)
        I18n.locale = language
      end
    end
  end
end
