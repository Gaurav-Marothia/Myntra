*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/PO/search_product.robot

*** Variables ***
${VANS_SNEAKERS}  //li[@data-index="2"]
${CAPT_MARVEL}  //*[@title="Vans Women Red & Navy Blue Marvel Captain Colourblocked Mid-Top Sneakers"]
${SIZE}  //*[@id="sizeButtonsContainer"]/div[2]/div[3]/div[1]/button/p  #(//p[contains(text(),"3.5")])
${ADD_TO_BAG}   //*[contains(text(),"ADD TO BAG")]
${GO_TO_BAG}   //*[contains(text(),"GO TO BAG")]
${PLACE_ORDER}   //*[contains(text(),"Place Order")]


*** Keywords ***
I've selected Vans shoe of size 7
    input text  ${SEARCH_BAR}  Vans
    click element  ${VANS_SNEAKERS}
    wait until page contains  Vans Sneakers
    click element  ${CAPT_MARVEL}
    wait until page contains  Women Red & Navy Blue Marvel Captain Colourblocked Mid-Top Sneakers
    select window  NEW
    wait until keyword succeeds  60s  2s  click element  ${SIZE}

I add this product to cart
    click element  ${ADD_TO_BAG}
    wait until page contains  Women Red & Navy Blue Marvel Captain Colourblocked Mid-Top Sneakers
Proceed to checkout
    click element   ${GO_TO_BAG}

I should be asked to Login into Myntra account
    click element  ${PLACE_ORDER}
    wait until page contains  Login to Myntra
