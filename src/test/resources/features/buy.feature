Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Butter" with price 90.00 and stock of 12 exists

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total should be 41.00
    Then The quantity of "Bread" should be 3 left in stock

Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    And I buy "Butter" with quantity 2
    Then total should be 301.00
    Then The quantity of "Bread" should be 3 left in stock
    Then The quantity of "Jam" should be 9 left in stock
    Then The quantity of "Butter" should be 10 left in stock
