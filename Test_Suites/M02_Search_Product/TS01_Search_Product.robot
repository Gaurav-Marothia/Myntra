*** Settings ***
Resource  ../../Config/test_data.robot
Resource  ../../Resources/PO/search_product.robot

Suite Setup  Log To Console  Suite Execution Started...
Suite Teardown  Log To Console  Suite Execution Completed...
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
Search By Brand
    Given I'm on homepage
    When I search for Nike products
    And Click on search button
    Then I should be able to see results related to Nike products

Search By Filter
    Given I'm on homepage
    When I search for Tokyo Talkies products
    And Apply filter as Dresses
    And Another filter as colour
    And Click on search button
    Then I should be able to view Tokyo Talkies dresses with price ranging from Rs-652 to Rs-925