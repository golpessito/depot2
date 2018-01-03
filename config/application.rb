require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Depot
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # You have to permit less secure apps in gmails settings
    # https://myaccount.google.com/lesssecureapps
    
    config.action_mailer.smtp_settings = {
      address:"smtp.gmail.com",
      port:587,
      domain:"gmail.com",
      authentication: "plain",
      user_name:"david.ruizdelarosa@gmail.com",
      password:"1_kira_1",
      enable_starttls_auto: true
    }

  end
end
