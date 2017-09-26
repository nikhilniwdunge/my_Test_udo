@validInvalidLogin

Feature: Login LogOut Feature
    
    Scenario: open URL
        Given I open the url "Bank_url"
        Then  I expect that the url is "ExpectedBank_url"
        And   I expect that the title is "loginPageTitle"
    
    Scenario: login with valid credentials
        Given I open the url "Bank_url"
        When  I set "mngr97977" to the inputfield "userNameTextbox"
        And   I set "mEgubYz" to the inputfield "passwordTextbox"
        And   I click on the element "loginButton"
        Then  I expect that the title is "homePageTitle"    

    Scenario: login with invalid credentials
        Given I open the url "Bank_url"
        When  I set "mngr97977" to the inputfield "userNameTextbox"
        And   I set "mEgubYz" to the inputfield "passwordTextbox"
        And   I click on the element "loginButton"
        Then  I expect that element "errorMessage" is visible
    