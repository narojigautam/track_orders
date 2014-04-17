require 'spec_helper'

describe OrderTracker::Order do
  it "always has a number" do
    order = FactoryGirl.build(:order, number: nil)
    order.number.should be_nil
    order.save
    order.number.should_not be_nil
  end
end