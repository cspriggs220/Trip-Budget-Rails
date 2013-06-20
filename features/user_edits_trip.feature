Feature: User edits a trip
  As a logged in user
  I want to be able to edit my trip
  so I can change the trip name

    Scenario: Single Edit
      Given I am logged in
      And I have the following trips:
            |  name          |
            |  Dallas        |
            |  Austin        |
      When I go to the trips page
      And click "Edit" for trip "Dallas"
      And I fill in "Name" with "Shanghai"
      And I click "Update Trip"
      Then I should see "Your trip was updated"
      And I should see the following list:
            |  Shanghai      |
            |  Austin        |