Feature: Balance Enquiry after Deposit and Withdrawal amount
    As a developer
    I want to be able to test the attributes of a given element

    Background:
        Given I open the site "/"           

    Scenario: login with valid credentials
        When  I set "mngr97977" to the inputfield "userNameTextbox"
        And   I set "mEgubYz" to the inputfield "passwordTextbox"
        And   I click on the element "loginButton"
        
        And   I click on the element "balanceEnquiryLink"
        And   I set "33153" to the inputfield "AccountNumberTextBox"
        And   I click on the element "submitButton"
        And   I store text of element "BalanceText" into variable "currentBalance"
        Then   Print variable "currentBalance"
        
