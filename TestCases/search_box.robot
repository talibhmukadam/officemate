*** Settings ***
Documentation    UI Tests
Resource  ../Keywords/search_box.robot

*** Test Cases ***
Search for Product and verify category and products suggestions
    [Tags]    Regression
    search for a product  Radio
    validate category
    validate products

