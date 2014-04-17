$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "order_tracker/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "order_tracker"
  s.version     = OrderTracker::VERSION
  s.authors     = ["Gautam Naroji"]
  s.email       = ["gautam@appyantra.com"]
  s.homepage    = "To be updated"
  s.summary     = "Track status of your DHL and FedEx Orders."
  s.description = "Order Tracker adds a tracking page to your app, and provides helpers for you to track DHL and FedEx orders."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.16"
  s.add_dependency "jquery-rails"
  s.add_dependency "state_machine"
  s.add_dependency "uuid"

  s.add_development_dependency "sqlite3", "~> 1.3.8"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency "capybara"
  s.add_development_dependency "haml"
  s.add_development_dependency "factory_girl_rails"
end