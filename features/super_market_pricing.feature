Feature: super market pricing for a shopper
  In order to buy groceries
  As a shopper
  I want to find prices

  Scenario: I want to buy a box of corn flakes
    Given I want to buy a "box of corn flakes"
    When the price is "$3.79"
    Then my price is "$3.79"
    