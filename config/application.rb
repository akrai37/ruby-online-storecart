require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Store278
  class Application < Rails::Application
    config.load_defaults 7.0
    config.autoload_paths += %W(#{config.root}/app)
  end
end
