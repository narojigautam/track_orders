module OrderTracker
  class Order < ActiveRecord::Base
    attr_accessible :number, :service_type_id, :total
  end
end
