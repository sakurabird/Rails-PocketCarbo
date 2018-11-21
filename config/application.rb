require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PocketCarbo
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # See http://qiita.com/d-mato/items/2be9466b2d768f1ba055
    config.time_zone = 'Tokyo'

    if Rails.version >= '5.1.0'
      config.active_record.sqlite3.represent_boolean_as_integer = true
    end

    # See https://mdbootstrap.com/support/jquery/problems-with-pro-components-2
    config.assets.paths << Rails.root.join("app", "assets", "font", "roboto")
    config.assets.paths << Rails.root.join("vendor", "assets", "img")
    config.assets.paths << Rails.root.join("vendor", "assets", "mdb-addons")
  end
end
