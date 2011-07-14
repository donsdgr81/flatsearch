require 'spec_helper'

describe "properties/index.html.erb" do
  before(:each) do
    @property_1 = FactoryGirl.create(:property_1)
    @property_2 = FactoryGirl.create(:property_2)

    assign(:properties, [@property_1, @property_2])
  end

  it "renders a list of properties" do
    render

    # 1st property
    rendered.should contain("3+1 HDB Yishun Area")
    rendered.should contain("New renoveated area in Yishun. 3+1 unit fully furnished with AC")
    rendered.should contain("Yishun, Singapore")
    rendered.should contain("760760")
    rendered.should contain("3")
    rendered.should contain("2")
    rendered.should contain("2300")
    rendered.should contain("true")
    rendered.should contain("2011-06-11")
    rendered.should contain("1200")

    #2nd property
    rendered.should contain("2+1 HDB Bishan Area")
    rendered.should contain("Bishan area close to MRT")
    rendered.should contain("Bishan, Singapore")
    rendered.should contain("123123")
    rendered.should contain("2")
    rendered.should contain("1")
    rendered.should contain("1900")
    rendered.should contain("false")
    rendered.should contain("2011-08-01")
    rendered.should contain("140")


  end


end
