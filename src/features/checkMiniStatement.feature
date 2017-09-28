@checkMiniStatement
Feature: Check MiniStatement :-
    
    #Background:
       # Given I open the site "Bank_url" 

    Scenario: First check balance, deposit some ammount, withdrawal same amount then finally check Mini Statement for same.
        Given I open the url "Bank_url"
        When  I set "mngr97977" to the inputfield "userNameTextbox"
        And   I set "mEgubYz" to the inputfield "passwordTextbox"
        And   I click on the element "loginButton"
        
        And   I click on the element "withdrawalLink"
        And   I set "33153" to the inputfield "AccountNumberTextBox"  
        And   I set "5000" to the inputfield "amountTextbox" 
        And   I set "Mediclaim Recovery-Parent" to the inputfield "descriptionTextbox"
        And   I click on the element "submitButton"

        And   I click on the element "depositLink"
        And   I set "33153" to the inputfield "AccountNumberTextBox"  
        And   I set "5000" to the inputfield "amountTextbox" 
        And   I set "Salary-September 2017" to the inputfield "descriptionTextbox"
        And   I click on the element "submitButton" 

        And   I click on the element "miniStatementLink"
        And   I set "33153" to the inputfield "AccountNumberTextBox"
        And   I click on the element "submitButton"
        And   I expect that element "MiniStateTransactionTypeForWithdrawal" contains the text "Var_MiniStateTransactionTypeForWithdrawal" 
        And   I expect that element "MiniStateTransactionTypeForDeposit" contains the text "var_MiniStateTransactionTypeForDeposit" 
        And   I expect that element "MiniStateAmountForWithdrawal" contains the text "Var_MiniStateAmountForWithdrawal" 
        Then  I expect that element "MiniStateAmountForDeposit" contains the text "var_MiniStateAmountForDeposit"   