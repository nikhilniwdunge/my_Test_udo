@BalanceEnquiry
Feature: Balance Enquiry :-
    
    #Background:
       # Given I open the site "Bank_url" 

    Scenario: First check balance, deposit some ammount, withdrawal same amount then finally check balance.
        Given I open the url "Bank_url"
        When  I set "mngr97977" to the inputfield "userNameTextbox"
        And   I set "mEgubYz" to the inputfield "passwordTextbox"
        And   I click on the element "loginButton"
        
        And   I click on the element "balanceEnquiryLink"
        And   I set "33153" to the inputfield "AccountNumberTextBox"
        And   I click on the element "submitButton"
        And   I expect that element "BalanceText" contains the text "ExpectedBalance"
        
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
        
        And   I click on the element "balanceEnquiryLink"
        And   I set "33153" to the inputfield "AccountNumberTextBox"
        And   I click on the element "submitButton"
        Then   I expect that element "BalanceText" contains the text "ExpectedBalance"   
	 
