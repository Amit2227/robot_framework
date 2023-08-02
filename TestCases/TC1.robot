*** Settings ***
Documentation    This is some basic infor about the suite
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}        https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest

    open browser        ${url}  ${browser}
    log               Starting the test Cases!
    loginToApplication
    sleep             3s

    close browser


*** Keywords ***
loginToApplication
    click link      xpath://a[@class='ico-login']
    input text      id:Email        demo@test.com
    input text      id:Password     Amit@1234
    click element   xpath://button[normalize-space()='Log in']
    maximize browser window
    sleep           5s
    click element   xpath://a[@class='ico-logout']

