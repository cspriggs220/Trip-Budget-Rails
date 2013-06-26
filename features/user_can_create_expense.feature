Feature: User can set a budget expense
  As a logged in user
  I want to be able to add expenses
  so I can keep track of my budget

  Scenario: See expense button when budget exists
    Given I am logged in
    Given a category
    When I go to the trips page
    When I click "New Trip"
    And I fill in "Name" with "Dallas"
    And I click "Save Trip!"
    Then I should not see "Add Expense"
    When I click "Food"
    And I fill in "Food Total" with "240"
    When I click "Save"
    Then I should see "Add Expense"

  Scenario: View expense page
    Given I am logged in
    Given a category
    When I go to the trips page
    When I click "New Trip"
    And I fill in "Name" with "Dallas"
    And I click "Save Trip!"
    Then I should not see "Add Expense"
    When I click "Food"
    And I fill in "Food Total" with "240"
    When I click "Save"
    Then I should see "Add Expense"
    When I click "Add Expense"
    Then I should see "Food Expenses"

  Scenario: Add expenses
    Given I am logged in
    Given a category
    When I go to the trips page
    When I click "New Trip"
    And I fill in "Name" with "Dallas"
    And I click "Save Trip!"
    When I click "Food"
    And I fill in "Food Total" with "240"
    When I click "Save"
    When I click "Add Expense"
    And I fill in "Expense Name" with "Kroger"
    And I fill in "Expense Amount" with "76"
    When I click "Save"
    Then I should see "Kroger"
    Then I should see "76"