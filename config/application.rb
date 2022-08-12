require_relative 'boot'
require 'openapi_first'
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BackendRubyEngineerInterview
  class Application < Rails::Application
    config.middleware.use OpenapiFirst::Router, spec: OpenapiFirst.load('./openapi.yaml')

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
  end
end
