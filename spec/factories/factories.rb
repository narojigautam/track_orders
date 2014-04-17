FactoryGirl.define do
  factory :order, :class => OrderTracker::Order do |f|
    f.number "MyString"
    f.total 123
    f.service_type  { |o| o.association(:service_type) }
  end

  factory :service_type, :class => OrderTracker::ServiceType do |f|
    f.name "FedEx"
  end
end