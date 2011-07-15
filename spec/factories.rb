FactoryGirl.define do

  factory :user do
    email 'donsdgr81@gmail.com'
    password 'password'
    password_confirmation 'password'
  end

  factory :property_1, :class => Property do
    title "3+1 HDB Yishun Area"
    description "New renoveated area in Yishun. 3+1 unit fully furnished with AC"
    address "Yishun, Singapore"
    zipcode "760760"
    bedrooms 3
    bathrooms 2
    price 2300
    negotiable true
    date_available Date.new(2011,6,11)
    size 1200
    furnished true
  end

  factory :property_2, :class => Property do
    title "2+1 HDB Bishan Area"
    description "Bishan area close to MRT"
    address "Bishan, Singapore"
    zipcode "123123"
    bedrooms 2
    bathrooms 1
    price 1900
    negotiable false
    date_available Date.new(2011,8,1)
    size 140
    furnished false
  end
end