Given /^I have a list of properties$/ do
  @property = Factory.create(:property)
end

Then /^I should see a list of properties$/ do
  Then "I should see the property details"
end

When /^I fill\-out the information about my property$/ do
  When %{I fill in the following:}, table(%{
    | Title | 3+1 HDB Yishun Area|
    | Description | New renoveated area in Yishun. 3+1 unit fully furnished with AC|
    | Address | Yishun, Singapore|
    | Zipcode | 760760|
    | Bedrooms | 3|
    | Bathrooms | 2|
    | Price | 2300|
  })
  And 'I check "Negotiable"'
  And 'I check "Furnished"'
  And 'I press "Submit Property"'
end

Then /^I should see my new post$/ do
  Then 'I should see "3+1 HDB Yishun Area"'
  And 'I should see "New renoveated area in Yishun. 3+1 unit fully furnished with AC"'
  And 'I should see "Yishun, Singapore"'
  And 'I should see "760760"'
  And 'I should see "3"'
  And 'I should see "2"'
  And 'I should see "2300"'
end

Given /^I have a property$/ do
  @property = Factory.create(:property)
end

When /^I try to update that property$/ do
  visit edit_property_url(@property)
  When %{I fill in the following:}, table(%{
    | Title | 3+1 HDB Yishun Area Edit|
    | Description | New renoveated area in Yishun. 3+1 unit fully furnished with AC Edit|
    | Address | Yishun, Singapore Edit|
    | Zipcode | 111111|
    | Bedrooms | 5|
    | Bathrooms | 6|
    | Price | 2500|
  })
  And 'I press "Submit Property"'

end

Then /^I should see my changes$/ do
  Then 'I should see "3+1 HDB Yishun Area Edit"'
  And 'I should see "New renoveated area in Yishun. 3+1 unit fully furnished with AC Edit"'
  And 'I should see "Yishun, Singapore Edit"'
  And 'I should see "111111"'
  And 'I should see "5"'
  And 'I should see "6"'
  And 'I should see "2500"'
end

When /^I check the property details$/ do
  When 'I follow "Show"'
end

Then /^I should see the property details$/ do
  Then "I should see \"#{@property.title}\""
  Then "I should see \"#{@property.description}\""
  Then "I should see \"#{@property.address}\""
  Then "I should see \"#{@property.zipcode}\""
  Then "I should see \"#{@property.bedrooms}\""
  Then "I should see \"#{@property.bathrooms}\""
  Then "I should see \"#{@property.price}\""
  Then "I should see \"#{@property.negotiable}\""
  Then "I should see \"#{@property.date_available}\""
  Then "I should see \"#{@property.size}\""
  Then "I should see \"#{@property.furnished}\""
end

When /^I delete that property$/ do
  When 'I follow "Destroy"'
end

Then /^I should not see the property in the list$/ do
  Then "I should see \"Property Deleted.\""

end






