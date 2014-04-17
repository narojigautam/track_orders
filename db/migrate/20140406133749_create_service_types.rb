class CreateServiceTypes < ActiveRecord::Migration
  def change
    create_table :order_tracker_service_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
