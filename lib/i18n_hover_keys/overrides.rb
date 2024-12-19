module I18nHoverKeys
  module Overrides
    def translate(key, **options)
      translation = super(key, **options)
      return translation unless translation.is_a?(String)

      "<span data-i18n-key='#{key}'>#{translation}</span>".html_safe
    end
    alias t translate
  end
end
