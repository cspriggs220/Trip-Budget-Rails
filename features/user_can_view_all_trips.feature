Feature: Users can view trip

  Scenario: Single Trip
    Given "jim@example.com" has the following trips:
        |  name          |
        |  Seattle       |
        |  Denver        |
    And I am logged in
    And I have the following trips:
        |  name          |
        |  Austin        |
        |  Boston        |
        |  London        |
    When I go to the trips page
    Then I should see the following list:
        |  Austin        |
        |  Boston        |
        |  London        |
    And I should not see any of the following:
        |  Seattle       |
        |  Denver        |