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
  And 'I press "Post Property"'
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

Given /^I add a list of properties$/ do
  pending
end

Then /^I should see a list of properties$/ do
  pending
end

