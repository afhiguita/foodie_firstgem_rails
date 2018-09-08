Feature: Food
  In order to portray or pluralize food
  As a CLI
  I want to be as objective as possible

  Scenario: Broccoli is gross
    When I run `fodie portray broccoli`
    Then the output should contain "Gross!"

  Scenario: Tomato, or Tomato?
    When I run `fodie pluralize --word Tomato`
    Then the output should contain "Tomatoes"
