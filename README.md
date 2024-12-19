# I18nHoverKeys

### A Rails extension that reveals translation keys when hovering over translated text, empowering QA teams and non-developers to identify the exact keys used in the interface.

## Usage

### Installation

1.  Add the gem to your Gemfile:

        gem 'i18n_hover_keys'

2.  Run `bundle install` to install the gem.

### Usage in Views

Make sure you use the  `t` (or `translate`) helper in your views for translations:

    <%= t("general.information") %>

Include the toggle button in your layout or view where you want to toggle the feature:

    <%= i18n_hover_toggle_button %>

Clicking this button enables hover mode:

*   Hover over any translated text, and a tooltip will show the corresponding translation key.
*   Click the button again to disable hover mode.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/eric-khoury/i18n_hover_keys.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
