Rails.application.routes.draw do
  mount OrderTracker::Engine => "/order_tracker"

  root :to => "home#index"
end
