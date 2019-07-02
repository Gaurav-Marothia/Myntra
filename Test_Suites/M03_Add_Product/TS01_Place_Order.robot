*** Settings ***
Resource  ../../Config/test_data.robot
Resource  ../../Resources/PO/checkout.robot
Resource  ../../Resources/PO/search_product.robot

Suite Setup  Log To Console  Suite Execution Started...
Suite Teardown  Log To Console  Suite Execution Completed...
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
Place Order
    Given I'm on homepage
    And I've selected Vans shoe of size 7
    When I add this product to cart
    And Proceed to checkout
    Then I should be asked to Login into Myntra account
