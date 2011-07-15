Feature: Manage User Authentication
  In order to limit user access
  I want users to log in before they access some features of my site

  Scenario: Adding a new property
    Given I am not logged in
    When I go to the new properties page
    Then I should be redirected to the login page

  Scenario: Editing a property
    Given I have a property
    And I am not logged in
    When I try to edit that property
    Then I should be redirected to the login page

  Scenario: Deleting a property
    Given I have a property
    And I am not logged in
    When I try to delete that property
    Then I should be redirected to the login page
