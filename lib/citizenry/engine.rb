require "rails"

# utility
require "httparty"
require "json"
require "addressable/uri"

# auth
require "devise"
require "omniauth"
require "openid"
require "net/dns/resolver"
require "twitter"
require "foursquare2"

# search
# require "thinking-sphinx"

# model
require "paperclip"
require "inherited_resources"
require "responders"
require "acts-as-taggable-on"
require "paper_trail"

# view
require "haml"
require "sass"
require "compass"
require "ninesixty"
require "jquery-rails"
require "formtastic"

# controller
require "will_paginate"

# middleware
require "rack/jsonp"

require "citizenry/api_client"
require "citizenry/auth_probe"
require "citizenry/localness"
require "citizenry/search_engine"

module Citizenry
  class Engine < Rails::Engine
    isolate_namespace Citizenry

    config.after_initialize do
      Rails.application.config.paths.vendor.plugins.push File.expand_path('../../vendor/plugins', __FILE__)
    end
  end
end
