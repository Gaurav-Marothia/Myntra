*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/PO/landing_page.robot

*** Variables ***
${SEARCH_BAR}  //input[@value='']
${SEARCH_BUTTON}  //a[@class="desktop-submit"]
${DRESSES}  //label[contains(text(), "Dresses")]
${BLACK}  //label[contains(text(), "Black")]
${TOKYO_TALKIES}  //li[@data-index="1"]


*** Keywords ***
I'm on homepage
    go to  ${BASE_URL}

I search for Nike products
    input text  ${SEARCH_BAR}  Nike

Click on search button
    click element  ${SEARCH_BUTTON}

I should be able to see results related to Nike products
    wait until page contains  Nike Collection

I search for Tokyo Talkies products
    input text  ${SEARCH_BAR}  Tokyo
    click element  ${TOKYO_TALKIES}
    wait until page contains  Tokyo Talkies

Apply filter as Dresses
    click element  ${DRESSES}

Another filter as colour
    click element  ${BLACK}

I should be able to view Tokyo Talkies dresses with price ranging from Rs-652 to Rs-925
    wait until page contains  CLEAR ALL
