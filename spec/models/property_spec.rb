require 'spec_helper'

describe Property do

  context "when creating and updating properties" do

    it {should belong_to(:user)}

    it "should check for existence of title, description, address, price and date available" do
      %w{title description address zipcode date_available}.each do |attrib|
        should validate_presence_of(attrib)
      end
    end

    it "should check for a valid price, number of bedrooms and bathrooms" do
      %w{price bedrooms bathrooms size}.each do |attrib|
        should validate_numericality_of(attrib)
      end
    end

    it "should have a user_id" do
      property = FactoryGirl.create(:property_1)
      property.user_id.should equal(User.first.id)
    end

  end
end
