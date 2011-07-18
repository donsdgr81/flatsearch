require 'spec_helper'

describe "properties/index.html.erb", :type => :request do
  before(:each) do
    @property_1 = FactoryGirl.create(:property_1)
    @property_2 = FactoryGirl.create(:property_2)

    assign(:properties, [@property_1, @property_2])
  end

  it "renders a list of properties" do
    visit('/properties')

    # 1st property
    page.should have_content("3+1 HDB Yishun Area")
    page.should have_content("New renoveated area in Yishun. 3+1 unit fully furnished with AC")
    page.should have_content("Yishun, Singapore")
    page.should have_content("760760")
    page.should have_content("3")
    page.should have_content("2")
    page.should have_content("2300")
    page.should have_content("true")
    page.should have_content("2011-06-11")
    page.should have_content("1200")

    #2nd property
    page.should have_content("2+1 HDB Bishan Area")
    page.should have_content("Bishan area close to MRT")
    page.should have_content("Bishan, Singapore")
    page.should have_content("123123")
    page.should have_content("2")
    page.should have_content("1")
    page.should have_content("1900")
    page.should have_content("false")
    page.should have_content("2011-08-01")
    page.should have_content("140")

  end


end
