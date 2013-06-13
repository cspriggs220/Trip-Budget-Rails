Feature: Users can view trip
  In order to see what trip I can plan to budget
  As a user
  I want to view my list of created trips

  Scenario: Single Trip
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
    Then I should see "Seattle"

  Scenario: No Trips Created
    Given the user "bob@example.com" with password "password1"
    When I go to the homepage
    And I click "Sign In"
    And I fill in "bob@example.com" for "Email"
    And I fill in "password1" for "Password"
    And I press "Sign in"
    When I click "View Trips"
    Then I should see "There are no trips at this time"