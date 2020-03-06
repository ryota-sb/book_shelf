require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module EnjoyReading
  class Application < Rails::Application
    config.load_defaults 6.0
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.yml').to_s]
    config.action_view.field_error_proc = Proc.new { |html_tag, instance| html_tag }
    config.action_view.embed_authenticity_token_in_remote_forms = true
    config.time_zone = 'Asia/Tokyo'
  end
end