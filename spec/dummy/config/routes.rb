Rails.application.routes.draw do

  mount OrderTracker::Engine => "/order_tracker"
end
