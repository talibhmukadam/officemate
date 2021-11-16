*** Settings ***
Resource  ../commons/drivers
Resource  ../Actions/search_box.robot

*** Keywords ***
search for a product
    [Arguments]    ${text}
    start browser
    enter text in search textbox  ${text}
    click search-icon

validate category
    Element Should Be Visible  ${CATEGORY_CSS}

validate products
    Element Should Be Visible  ${PRODUCT_CSS}

