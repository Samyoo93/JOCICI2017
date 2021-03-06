require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module JOCICI2017
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # Rails.application.config.assets.compile = true
    Rails.application.config.assets.compile = true
    config.gem 'rack-recaptcha', :lib => 'rack/recaptcha'
    config.middleware.use Rack::Recaptcha, :public_key => '6LeQRBgUAAAAAB9bOeTrM5B2TvqXWLSwA5Eiy4uT', :private_key => '6LeQRBgUAAAAAAiGBo8iLPz3xfn2bKmx2grGcFHB'

  end
end
