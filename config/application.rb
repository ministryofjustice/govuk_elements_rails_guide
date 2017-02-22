require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_model/railtie"
# require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GovukElementsRailsGuide
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    config.app_title = 'GOV.UK elements Rails form builder guide'
    config.proposition_title = ''
    # phase governs text indicators and highlight colours
    # presumed values: alpha, beta, live
    config.phase = 'alpha'
    # product type may also govern highlight colours
    # known values: information, service
    config.product_type = 'information'

    # Use memory store for assets cache in development/test to avoid caching
    # to tmp/assets, because it causes hiding of deprecation messages in
    # stylesheets, sometimes break parallel_tests and doesn't always refresh
    # gem stylesheets in development
    config.assets.configure do |env|
      if Rails.env.development? || Rails.env.test?
        env.cache = ActiveSupport::Cache.lookup_store(:memory_store)
      end
    end

    ActionView::Base.default_form_builder = GovukElementsFormBuilder::FormBuilder

  end
end
