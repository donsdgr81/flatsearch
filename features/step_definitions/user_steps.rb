Given /^a valid user$/ do
  @user = Factory.create(:user)
end


Given /^a logged in user$/ do
  Given 'a valid user'
  When 'I go to the login page'
  And 'I fill in "Email" with "'  + @user.email + '"'
  And 'I fill in "Password" with "' + @user.password + '"'
  And 'I press "Sign in"'
  Then 'I should see "Signed in successfully."'
end

Given /^I am not logged in$/ do
  visit('/users/sign_out')
end
