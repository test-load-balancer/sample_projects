Feature: Addition

  Scenario: Make sure I can add 2 numbers
    Given There are two numbers 1 and 2
    When I add them together
    Then I should get 3
