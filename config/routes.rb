OrderTracker::Engine.routes.draw do
  root :to => "order_tracker#index", as: :order_tracker

  resources :orders
end
