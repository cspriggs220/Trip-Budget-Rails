Feature: User views a list of expenses
  As a logged in user
  I want to be able to view my expenses
  so I can track the balance of trip

  Scenario: Add expenses and view them
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
  When I click "Add Expense"
  And I fill in "Expense Name" with "Tacos"
  And I fill in "Expense Amount" with "18"
  When I click "Save"
  Then I should see "Kroger"
  Then I should see "Tacos"
  Then I should see "146"
