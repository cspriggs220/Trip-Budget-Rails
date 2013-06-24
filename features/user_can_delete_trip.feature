Feature: User deletes a trip
  As a logged in user
  I want to be able to delete my trip
  so I can remove that trip from my account

    Scenario: Single Delete
      Given I am logged in
      And I have the following trips:
          |  name          |
          |  Dallas        |
          |  Austin        |
      When I go to the trips page
      And click "Delete" for trip "Dallas"
      Then I should see "Your trip was deleted"
      And I should see the following list:
          |  Austin        |

    Scenario: Delete All
      Given I am logged in
      And I have the following trips:
          |  name          |
          |  Dallas        |
          |  Austin        |
      When I go to the trips page
      And click "Delete" for trip "Austin"
      Then I should see "Your trip was deleted"
      And click "Delete" for trip "Dallas"
      Then I should see "There are no trips at this time"
