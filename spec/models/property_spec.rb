require 'spec_helper'

describe Property do

  context "when adding new records" do
    it "should check for existence of title, description, address, price and date available" do
      should validate_presence_of(:title)
      should validate_presence_of(:description)
      should validate_presence_of(:address)
      should validate_presence_of(:zipcode
      should validate_presence_of(:price)
      should validate_presence_of(:date_available)
    end
  end
end
