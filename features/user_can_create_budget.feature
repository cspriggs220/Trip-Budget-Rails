@wip
Feature: User can set a trip budget
  As a logged in user
  I want to be able to set a trip's budget
  so I can properly plan my trip

  Scenario: See budgets section
    Given I am logged in
    Given a category
    When I go to the trips page
    When I click "New Trip"
    And I fill in "Name" with "Dallas"
    And I click "Save Trip!"
    And show me the page
    And I fill in "Food" with "175"
    And I click "Add Budget"
    Then I should see "Food budget added!"
