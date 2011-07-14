require 'spec_helper'

describe "properties/show.html.erb" do
  before(:each) do
    @property_1 = FactoryGirl.create(:property_1)
    @property = assign(:property, @property_1)
  end

  it "should display the property information" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers

    rendered.should contain("Title: #{@property_1.title}")
    rendered.should contain("Description: #{@property_1.description}")
    rendered.should contain("Address: #{@property_1.address}")
    rendered.should contain("Zipcode: #{@property_1.zipcode}")
    rendered.should contain("Bedrooms: #{@property_1.bedrooms}")
    rendered.should contain("Bathrooms: #{@property_1.bathrooms}")
    rendered.should contain("Price: #{@property_1.price}")
    rendered.should contain("Negotiable: #{@property_1.negotiable}")
    rendered.should contain("Date available: #{@property_1.date_available}")
    rendered.should contain("Size: #{@property_1.size}")
    rendered.should contain("Furnished: #{@property_1.furnished}")

  end
end
