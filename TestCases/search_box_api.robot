*** Settings ***
Documentation    API tests
Resource  ../commons/drivers.robot

*** Test Cases ***
Verify Count of products
    ${response}=    GET  url=https://www.officemate.co.th/api/search/products?searchQuery=radio
    Should Be Equal As Strings    107  ${response.json()}[products][total_count]

Verify 404 with empty string
    ${response}=    GET  url=https://www.officemate.co.th/api/search/products?searchQuery=  expected_status=404

Verify 404 with % string
    ${response}=    GET  url=https://www.officemate.co.th/api/search/products?searchQuery=  expected_status=404