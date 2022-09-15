# frozen_string_literal: true

Rails.application.config.middleware.use OmniAuth::Builder do
  OAUTH_CONFIG = YAML.load_file("#{Rails.root}/config/omniauth.yml")[Rails.env].symbolize_keys!

  provider :google_oauth2, OAUTH_CONFIG[:google]['key'], OAUTH_CONFIG[:google]['secret'], name: :google, scope: %w(email)
end
