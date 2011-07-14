require 'spec_helper'

describe "properties/edit.html.erb" do
  before(:each) do
    @property = assign(:property, FactoryGirl.create(:property_1))
  end

  it "renders the edit property form" do
    render

    assert_select "form", :action => properties_path(@property), :method => "post" do
      assert_select "input#property_title", :name => "property[title]"
      assert_select "textarea#property_description", :name => "property[description]"
      assert_select "input#property_address", :name => "property[address]"
      assert_select "input#property_zipcode", :name => "property[zipcode]"
      assert_select "input#property_bedrooms", :name => "property[bedrooms]"
      assert_select "input#property_bathrooms", :name => "property[bathrooms]"
      assert_select "input#property_price", :name => "property[price]"
      assert_select "input#property_negotiable", :name => "property[negotiable]"
      assert_select "input#property_size", :name => "property[size]"
      assert_select "input#property_furnished", :name => "property[furnished]"
    end
  end
end
