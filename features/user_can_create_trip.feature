Feature: Users can create trip

  Scenario: Happy Path
    Given I am logged in
    And I have the following trips:
          |  name          |
          |  Dallas        |
          |  Austin        |
    When I go to the trips page
    When I click "New Trip"
    And I fill in "Name" with "Boston"
    And I click "Save Trip!"
    Then I should see "Your Boston trip was created!"
    When I click "Back"
    And I should see the following list:
          |  Dallas        |
          |  Austin        |
          |  Boston        |


  Scenario: No Trip Name Given
    Given I am logged in
    And I have the following trips:
          |  name          |
          |  Dallas        |
          |  Austin        |
    When I go to the trips page
    When I click "New Trip"
    And I fill in "Name" with ""
    And I click "Save Trip!"
    Then I should see "Name can't be blank"


  Scenario: Duplicate Trip Name Given
    Given I am logged in
    When I go to the trips page
    When I click "New Trip"
    And I fill in "Chicago" for "Name"
    And I click "Save Trip!"
    When I go to the trips page
    When I click "New Trip"
    And I fill in "Chicago" for "Name"
    And I click "Save Trip!"
    Then I should see "Name must be unique"