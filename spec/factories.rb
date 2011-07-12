Factory.define(:property) do |p|
  p.title "3+1 HDB Yishun Area"
  p.description "New renoveated area in Yishun. 3+1 unit fully furnished with AC"
  p.address "Yishun, Singapore"
  p.zipcode "760760"
  p.bedrooms 3
  p.bathrooms 2
  p.price 2300
  p.negotioble true
  p.date_available Date.new(2011,06,11)
  p.size 1200
  p.furnished true
end