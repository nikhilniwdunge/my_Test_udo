@addEditDeleteAccount
Feature: add, Edit,Delete Account :-

    #Background:
       # Given I open the site "Bank_url" 

    Scenario: First add account, edit account type, finally delete same account.
        Given I open the url "Bank_url"
        When  I set "mngr97977" to the inputfield "userNameTextbox"
        And   I set "mEgubYz" to the inputfield "passwordTextbox"
        And   I click on the element "loginButton"
        
        And   I click on the element "newAccountLink"
        And   I set "27449" to the inputfield "customerIdTextbox"
        And   I set "10000" to the inputfield "initialDepositTextbox"
        And   I click on the element "addNewAccount_AccountTypeCurrent"

        And   I click on the element "addNewAccount_SubmitButton"
        And   I store text of element "accountIDText" into variable "AccountID"
        And   Print variable "AccountID"

        And   I click on the element "editAccountLink"
        And   I insert "AccountID" to the inputfield "AccountNumberTextBox"
        And   I click on the element "submitButton"
        And   I click on the element "editAccount_AccountTypeSavings"
        And   I click on the element "submitButton"

        And   I click on the element "deleteAccountLink"
        And   I insert "AccountID" to the inputfield "AccountNumberTextBox"
        Then  I click on the element "submitButton"
        
        
        