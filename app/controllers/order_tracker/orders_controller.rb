require_dependency "order_tracker/application_controller"

module OrderTracker
  class OrdersController < ApplicationController
    http_basic_authenticate_with name: "order", password: "tracker", only: :new
    def new
      @order = OrderTracker::Order.new
    end

    def create
      @order = OrderTracker::Order.create(params[:order])
      if @order
        redirect_to order_tracker_path
      else
        render :new, flash: @order.errors.messages
      end
    end

    def show
      @order = OrderTracker::Order.find params[:id]
    end

    def find
      redirect_to(order_tracker_path, notice: "Order #{params[:number]} does not exist") and return unless OrderTracker::Order.exists? number: params[:number]
      @order = OrderTracker::Order.find_by_number params[:number]
      render :show
    end
  end
end
