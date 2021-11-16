*** Settings ***
Resource  ../commons/drivers.robot

*** Variables ***
${SEARCH_TEXTBOX_CSS}  css=[data-testid="txt-SearchBar"]
${CATEGORY_CSS}  css=[data-suggestion-label^="categories_aj_"]
${PRODUCT_CSS}  css=[data-suggestion-label^="products_aj_"]
${SEARCH_ICON_CSS}  css=[id="btn-searchResultPage"]

*** Keywords ***
Clear search textbox
    Clear Element Text  ${SEARCH_TEXTBOX_CSS}

enter text in search textbox
    [Arguments]    ${text}
    Input Text  ${SEARCH_TEXTBOX_CSS}  ${text}

click search-icon
    Click Button  ${SEARCH_ICON_CSS}


