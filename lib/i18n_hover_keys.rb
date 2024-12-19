# frozen_string_literal: true

require_relative "i18n_hover_keys/version"
require_relative "i18n_hover_keys/view_helpers"
require_relative "i18n_hover_keys/overrides"
require_relative "i18n_hover_keys/railtie"
require_relative "i18n_hover_keys/engine"

module I18nHoverKeys
  class Error < StandardError; end
end
