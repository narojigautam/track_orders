module OrderTracker
  module ApplicationHelper
    def track_your_order(order_id = nil)
      if order_id.present? and OrderTracker::Order.exists? number: order_id
        @order = OrderTracker::Order.find_by_number order_id
        render "/order_tracker/orders/order_details", order: @order
      else
        render "/order_tracker/orders/track_order_modal"
      end
    end
  end
end
