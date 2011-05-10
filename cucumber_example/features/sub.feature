Feature: Subtraction

  Scenario: Make sure I can subtract 2 numbers
    Given There are two numbers for subtraction 2 and 1
    When I subtract second from the first
    Then I should get the difference 0
