module OrderTracker
  class ServiceType < ActiveRecord::Base
    attr_accessible :name
    has_many :orders
  end
end