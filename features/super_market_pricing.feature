Feature: super market pricing for a shopper
  In order to buy groceries
  As a shopper
  I want to find prices

 Background: the super market has an inventory of items with prices and sales
   Given the super market has an inventory
   And the super market has "15" "boxes" of "Corn Flakes" at "$3.79"
   And the super market has "50" "bags" of "Skittles" at "$0.59"
   And "Skittles" are on sale for "3" for "$1.00"

  Scenario: I want to buy a box of corn flakes
    Given I want to buy "1" "box" of "Corn Flakes"
    When the price is normally "$3.79"
    Then my price is "$3.79"

  Scenario: I want to buy three candy bars
    Given I want to buy "3" "bags" of "Skittles"
    When the price is normally "$0.59"
    Then my price is "$1.00"