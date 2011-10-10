$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "citizenry/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "citizenry"
  s.version     = Citizenry::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Citizenry."
  s.description = "TODO: Description of Citizenry."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.1"
  #--[ Utility ]------------------------------------------------------------------
  s.add_dependency 'httparty', '~> 0.8.0'
  s.add_dependency "json", "~> 1.6.1"
  s.add_dependency 'addressable', '~> 2.2.4'

  #--[ Authentication ]-----------------------------------------------------------
  s.add_dependency 'devise', "~> 1.4.5"
  s.add_dependency 'omniauth', "~> 0.2.6"

  # Automatic login provider selection
  s.add_dependency 'ruby-openid', '~> 2.1.8'
  s.add_dependency 'net-dns', '~> 0.6.1'

  # Client libraries for authenticated services
  # TODO: Upgrade these to newer versions after omniauth 0.3 upgrade
  s.add_dependency 'twitter', '~> 1.6.0'
  s.add_dependency 'foursquare2', '~>1.1.0'   # https://gist.github.com/419219 <- github oauth docs!

  #--[ Search ]-------------------------------------------------------------------
  # If you're using the default sql-based search, you can comment this out.
  # s.add_dependency 'thinking-sphinx', '~> 2.0.1'

  #--[ Model ]--------------------------------------------------------------------
  s.add_dependency "paperclip", "~> 2.3"
  s.add_dependency "inherited_resources", "~> 1.3.0"
  s.add_dependency "responders", "~> 0.6.2"

  s.add_dependency 'acts-as-taggable-on', "~> 2.1.1"

  s.add_dependency 'paper_trail', '~> 2'
  # gem 'paper_trail_manager', :path => '../paper_trail_manager'

  #--[ View ]---------------------------------------------------------------------
  s.add_dependency "haml", "~> 3.1.2"
  s.add_dependency "sass", "~> 3.1.4"
  s.add_dependency "compass", "~> 0.11.5"
  s.add_dependency "compass-960-plugin", "~> 0.10.4"
  s.add_dependency 'jquery-rails', '>= 1.0.14'
  s.add_dependency 'formtastic', '~>1.2.4'

  #--[ Controller ]---------------------------------------------------------------
  s.add_dependency 'will_paginate', '~> 3.0.1'

  #--[ Middleware ]---------------------------------------------------------------
  s.add_dependency 'rack-jsonp', '~> 1.2.0'

    # -- [ Tools ] ---------------------------------------------------------------
  s.add_development_dependency 'rcov'
  s.add_development_dependency 'ruby-debug'
  s.add_development_dependency 'annotate'
  s.add_development_dependency "nifty-generators"

  s.add_development_dependency "sqlite3"
end
