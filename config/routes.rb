OrderTracker::Engine.routes.draw do
  root :to => "order_tracker#index", as: :order_tracker

  resources :orders, except: [:index, :edit, :delete] do
    get :find, on: :collection
  end
end
