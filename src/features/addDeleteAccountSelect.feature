@addDeleteAccount
Feature: add,Delete Account :-

    #Background:
       # Given I open the site "Bank_url" 

    Scenario: First add account, then finally delete same account.
        Given I open the url "Bank_url"
        When  I set "mngr97977" to the inputfield "userNameTextbox"
        And   I set "mEgubYz" to the inputfield "passwordTextbox"
        And   I click on the element "loginButton"
        
        And   I click on the element "newAccountLink"
        And   I set "27449" to the inputfield "customerIdTextbox"
        And   I set "10000" to the inputfield "initialDepositTextbox"
        And   I pause for 10000ms
        And   I select the option with the name "inputForAccountTypeDropdown" for element "addNewAccount_AccountTypeDropdown"
       
        And   I click on the element "addNewAccount_SubmitButton"
        And   I store text of element "accountIDText" into variable "AccountID"
        And   Print variable "AccountID"
        
        And   I click on the element "deleteAccountLink"
        And   I set "AccountID" to the inputfield "AccountNumberTextBox"
        Then  I click on the element "submitButton"

