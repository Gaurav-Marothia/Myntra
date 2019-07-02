*** Settings ***
Resource  ../../Config/test_data.robot
Resource  ../../Resources/PO/landing_page.robot

Suite Setup  Log To Console  Suite Execution Started...
Suite Teardown  Log To Console  Suite Execution Completed...
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
Successful Login
    [Tags]  Smoke  Regression  Sanity
    Given I've Myntra account
    And I enter valid username & password
    When I click Log-In button
    Then I should be successfuly loged in

Unsuccessful Login
    [Tags]  Smoke  Regression  Sanity
    Given I've Myntra account
    And I enter invalid username & password
    When I click Log-In button
    Then I should recieve an error message & should not be logged in


