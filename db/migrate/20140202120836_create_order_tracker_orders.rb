class CreateOrderTrackerOrders < ActiveRecord::Migration
  def change
    create_table :order_tracker_orders do |t|
      t.string :number
      t.decimal :total
      t.integer :service_type_id

      t.timestamps
    end
  end
end
