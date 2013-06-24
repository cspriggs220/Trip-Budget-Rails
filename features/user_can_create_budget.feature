Feature: User can set a trip budget
  As a logged in user
  I want to be able to set a trip's budget
  so I can properly plan my trip

  Scenario: See budget category
    Given I am logged in
    Given a category
    When I go to the trips page
    When I click "New Trip"
    And I fill in "Name" with "Dallas"
    And I click "Save Trip!"
    Then I should see "Food"

  Scenario: Set budget
    Given I am logged in
    Given a category
    When I go to the trips page
    When I click "New Trip"
    And I fill in "Name" with "Dallas"
    And I click "Save Trip!"
    When I click "Food"
    And I fill in "Food Total" with "175"
    And I click "Save"
    Then I should see "Food budget was updated"

  Scenario: No value given error
    Given I am logged in
    Given a category
    When I go to the trips page
    When I click "New Trip"
    And I fill in "Name" with "Dallas"
    And I click "Save Trip!"
    When I click "Food"
    And I fill in "Food Total" with ""
    And I click "Save"
    Then I should see "Total amount must be given"
