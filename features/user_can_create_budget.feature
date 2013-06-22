@wip
Feature: User can set a trip budget
  As a logged in user
  I want to be able to set a trip's budget
  so I can properly plan my trip

  Scenario: See budgets page
    Given I am logged in
    When I go to the trips page
    When I click "New Trip"
    And I fill in "Name" with "Dallas"
    And I click "Save Trip!"
    Then I should see "Set Budgets"
