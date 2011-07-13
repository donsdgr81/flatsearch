Feature: Manage Properties
  In order to list some properties
  As a user
  I want to be able to post and manage properties

  Scenario: List all properties
    Given I have a list of properties
    When I am on the properties page
    Then I should see a list of properties


  Scenario: Post a new property
    Given I am on the new properties page
    When I fill-out the information about my property
    Then I should see my new post

  Scenario: Update a property
    Given I have a property
    When I try to update that property
    Then I should see my changes

  Scenario: Show a property
    Given I have a property
    When I am on the properties page
    And I check the property details
    Then I should see the property details

  Scenario: Delete a property
    Given I have a property
    When I am on the properties page
    And I delete that property
    Then I should not see the property in the list
