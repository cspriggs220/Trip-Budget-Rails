Feature: Users can create trip
  In order to set my trip budget
  As a user
  I want to create a new trip

  Scenario: Happy Path
    Given the user is signed in
    When I click "Create Trip"
    And I fill in "Boston" for "Name"
    And I click "Add Trip"
    Then I should see "Your trip was successfully created!"

  Scenario: No Trip Name Given
    Given the user is signed in
    When I click "Create Trip"
    And I fill in "" for "Name"
    And I click "Add Trip"
    Then I should see "You must enter a name for this trip. Please try again."

  Scenario: Duplicate Trip Name Given
    Given the user is signed in
    When I click "Create Trip"
    And I fill in "Chicago" for "Name"
    And I click "Add Trip"
    And I fill in "Chicago" for "Name"
    And I click "Add Trip"
    Then I should see "This trip already exists. Please use a unique trip name and try again."