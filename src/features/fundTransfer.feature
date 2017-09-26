@fundTransfer
Feature: Balance Enquiry after fundTransfer from two accounts
    As a developer
    I want to be able to test the attributes of a given element

    Scenario: First check balance, fundTransfer from account1 to account2,fundTransfer from account2 to account1, then finally check balance.

        Given I open the url "Bank_url"
        When  I set "mngr97977" to the inputfield "userNameTextbox"
        And   I set "mEgubYz" to the inputfield "passwordTextbox"
        And   I click on the element "loginButton"
        
        And   I click on the element "balanceEnquiryLink"
        And   I set "33155" to the inputfield "AccountNumberTextBox"
        And   I click on the element "submitButton"
        And   I expect that element "BalanceText" contains the text "ExpectedBalance"

        And   I click on the element "balanceEnquiryLink"
        And   I set "33157" to the inputfield "AccountNumberTextBox"
        And   I click on the element "submitButton"
        And   I expect that element "BalanceText" contains the text "ExpectedBalance"
        
        And   I click on the element "fundTransferLink"
        And   I set "33155" to the inputfield "payersAccountTextbox"  
        And   I set "33157" to the inputfield "payeeAccountTextbox"
        And   I set "5000" to the inputfield "amountTextbox" 
        And   I set "Atul-Ritesh" to the inputfield "descriptionTextbox"
        And   I click on the element "submitButton" 

        And   I click on the element "fundTransferLink"
        And   I set "33157" to the inputfield "payersAccountTextbox"  
        And   I set "33155" to the inputfield "payeeAccountTextbox"
        And   I set "5000" to the inputfield "amountTextbox" 
        And   I set "Ritesh-Atul" to the inputfield "descriptionTextbox"
        And   I click on the element "submitButton" 

        And   I click on the element "balanceEnquiryLink"
        And   I set "33155" to the inputfield "AccountNumberTextBox"
        And   I click on the element "submitButton"
        And   I expect that element "BalanceText" contains the text "ExpectedBalance"

        And   I click on the element "balanceEnquiryLink"
        And   I set "33157" to the inputfield "AccountNumberTextBox"
        And   I click on the element "submitButton"
        Then   I expect that element "BalanceText" contains the text "ExpectedBalance"
