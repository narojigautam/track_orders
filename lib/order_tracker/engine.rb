module OrderTracker
  class Engine < ::Rails::Engine
    isolate_namespace OrderTracker
    config.generators.integration_tool :rspec
    config.generators.test_framework   :rspec
  end
end