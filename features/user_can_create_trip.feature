Feature: Users can create trip
  In order to set my trip budget
  As a user
  I want to create a new trip

  Scenario: Happy Path
    Given the user "bob@example.com" with password "password1"
    When I go to the user index page
    When I click "Create Trip"
    And I fill in "Boston" for "Name"
    And I click "Save Trip!"
    Then I should see "Your trip was successfully created!"

  Scenario: No Trip Name Given
    Given the user "bob@example.com" with password "password1"
    When I go to the user index page
    When I click "Create Trip"
    And I fill in "" for "Name"
    And I click "Save Trip!"
    Then I should see "Name can't be blank"

  Scenario: Duplicate Trip Name Given
    Given the user "bob@example.com" with password "password1"
    When I go to the user index page
    When I click "Create Trip"
    And I fill in "Chicago" for "Name"
    And I click "Save Trip!"
    When I go to the user index page
    When I click "Create Trip"
    And I fill in "Chicago" for "Name"
    And I click "Save Trip!"
    Then I should see "Name has already been taken"