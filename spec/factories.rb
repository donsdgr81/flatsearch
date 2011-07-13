FactoryGirl.define do

  factory :property do
    title "3+1 HDB Yishun Area"
    description "New renoveated area in Yishun. 3+1 unit fully furnished with AC"
    address "Yishun, Singapore"
    zipcode "760760"
    bedrooms 3
    bathrooms 2
    price 2300
    negotiable true
    date_available Date.new(2011,06,11)
    size 1200
    furnished true
  end
end