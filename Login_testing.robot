***Settings***
Library     Selenium2Library

***Variables***
${URL}      https://demo.nopcommerce.com/
${BROWSER}      chrome

***Test Cases***
Open the website to check the login
    Open Browser   ${URL}       ${BROWSER} 
    LoginTonopcommerce 
    Close Browser   

***Keywords***
LoginTonopcommerce
    Click Link      xpath://a[@class='ico-login']
    Input Text      id:Email    umaraj.v6@gmail.com
    Input Text      id:Password     Thuthipet
    Click Element       xpath://input[@class='button-1 login-button']
    