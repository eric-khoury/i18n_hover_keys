module I18nHoverKeys
  class Engine < ::Rails::Engine
    initializer 'i18n_hover_keys.assets.precompile' do |app|
      app.config.assets.precompile += %w(i18n_hover_keys.js i18n_hover_keys.css)
    end
  end
end
