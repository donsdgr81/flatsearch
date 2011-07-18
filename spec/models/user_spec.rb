require 'spec_helper'

describe User do

  context "when signing up a new user" do
    it "should require email, password and password confirmation" do
      should validate_presence_of(:email)
      should validate_presence_of(:password)
      should validate_presence_of(:password_confirmation)
    end
  end

  it {should have_many(:properties)}
end
