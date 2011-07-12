Feature: Manage Properties
  In order to list some properties
  As a user
  I want to be able to post and manage properties

  Scenario: Post a new property
    Given I am on the new properties page
    When I fill-out the information about my property
    Then I should see my new post


  Scenario: List all properties
    Given I add a list of properties
    When I am on the properties page
    Then I should see a list of properties
