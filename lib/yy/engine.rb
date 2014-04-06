require 'jquery-rails'
require 'angularjs-rails'
require 'coffee-rails'
require 'sass-rails'
require 'bootstrap-sass'
require 'devise'
require 'gon'

module Yy
  class Engine < ::Rails::Engine
    isolate_namespace Yy

    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: true,
        request_specs: true

      g.fixture_replacement :factory_girl, dir: "spec/support/factories"
    end
  end
end
