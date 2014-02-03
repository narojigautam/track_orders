require 'spec_helper'

describe "orders" do
  it "checking details of an order" do
    visit order_tracker_path
    fill_in "Order Number", :with => "First Order"
    click_button "Search"
    within "#flash_notice" do
      page.should have_content("Order has been found!")
    end
  end
end