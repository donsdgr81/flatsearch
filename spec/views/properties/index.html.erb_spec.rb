require 'spec_helper'

describe "properties/index.html.erb" do
  before(:each) do
    assign(:properties, [
      stub_model(Property,
        :title => "Title",
        :description => "MyText",
        :address => "Address",
        :zipcode => "Zipcode",
        :bedrooms => 1,
        :bathrooms => 1,
        :price => 1.5,
        :negotiable => false,
        :size => 1.5,
        :furnished => false
      ),
      stub_model(Property,
        :title => "Title",
        :description => "MyText",
        :address => "Address",
        :zipcode => "Zipcode",
        :bedrooms => 1,
        :bathrooms => 1,
        :price => 1.5,
        :negotiable => false,
        :size => 1.5,
        :furnished => false
      )
    ])
  end

  it "renders a list of properties" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
