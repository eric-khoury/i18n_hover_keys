require "i18n_hover_keys/view_helpers"

module I18nHoverKeys
  class Railtie < Rails::Railtie
    initializer 'i18n_hover_keys.view_helpers' do
      ActiveSupport.on_load(:action_view) do
        include I18nHoverKeys::ViewHelpers
      end
    end

    initializer 'i18n_hover_keys.overrides' do
      ActionView::Base.prepend(I18nHoverKeys::Overrides)
    end
  end
end
