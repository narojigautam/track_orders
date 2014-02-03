require_dependency "order_tracker/application_controller"

module OrderTracker
  class OrdersController < ApplicationController
    def index
      @orders = OrderTracker::Order.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @orders }
      end
    end
  end
end
