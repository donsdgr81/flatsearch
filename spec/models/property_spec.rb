require 'spec_helper'

describe Property do

  context "when creating and updating properties" do
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
  end
end
