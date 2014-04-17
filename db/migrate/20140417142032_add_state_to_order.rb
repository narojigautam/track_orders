class AddStateToOrder < ActiveRecord::Migration
  def change
    add_column :order_tracker_orders, :state, :string
  end
end