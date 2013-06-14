@wip
Feature: User can view individual trip page
  In order to view my trip info
  As a user
  I want to visit that trip's page

  Scenario: New trip and view trip page
    Given the user "bob@example.com" with password "password1"
    When I go to the homepage
    And I click "Sign In"
    And I fill in "bob@example.com" for "Email"
    And I fill in "password1" for "Password"
    And I press "Sign in"
    When I click "Create a Trip"
    And I fill in "Seattle" for "Name"
    And I click "Save Trip!"
    When I click "View Trips"
    And I click "Seattle"
    Then I should see "Seattle Budget"