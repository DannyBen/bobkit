module Bobkit
  module I18nMixin
    def t(*args)
      I18n.t *args
    end

    def l(*args)
      I18n.l *args
    end
  end
end