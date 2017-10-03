@BalanceEnquiry
Feature: Balance Enquiry :-
    
    #Background:
       # Given I open the site "Bank_url" 

    Scenario Outline: First check balance, deposit some ammount, withdrawal same amount then finally check balance.
        Given I open the url <Bankurl>
        When  I set <username> to the inputfield "userNameTextbox"
        And   I set <password> to the inputfield "passwordTextbox"
        And   I click on the element "loginButton"
        
        And   I click on the element "balanceEnquiryLink"
        And   I set <accountNumber> to the inputfield "AccountNumberTextBox"
        And   I click on the element "submitButton"
        And   I expect that element "BalanceText" contains the text "ExpectedBalanceIs"
        
        And   I click on the element "depositLink"
        And   I set <accountNumber> to the inputfield "AccountNumberTextBox"  
        And   I set <amountDeposited> to the inputfield "amountTextbox" 
        And   I set <DepositDesc> to the inputfield "descriptionTextbox"
        And   I click on the element "submitButton" 

        And   I click on the element "withdrawalLink"
        And   I set <accountNumber> to the inputfield "AccountNumberTextBox"  
        And   I set <amountWithdrawal> to the inputfield "amountTextbox" 
        And   I set <WithdrawalDesc> to the inputfield "descriptionTextbox"
        And   I click on the element "submitButton"
        
        And   I click on the element "balanceEnquiryLink"
        And   I set <accountNumber> to the inputfield "AccountNumberTextBox"
        And   I click on the element "submitButton"
        Then   I expect that element "BalanceText" contains the text "ExpectedBalanceIs"   
	 
      Examples:
          |Bankurl|username|password|accountNumber|amountDeposited|DepositDesc|amountWithdrawal|WithdrawalDesc|ExpectedBalanceIs|
          |"/"|"mngr97977"|"mEgubYz"|"33153"|"5000"|"Salary-September 2017"|"5000"|"Mediclaim Recovery-Parent"|"10000"|
          |"/"|"mngr97977"|"mEgubYz"|"33155"|"5000"|"Salary-September 2017"|"5000"|"Mediclaim Recovery-Parent"|"5000"|
          |"/"|"mngr97977"|"mEgubYz"|"33156"|"5000"|"Salary-September 2017"|"5000"|"Mediclaim Recovery-Parent"|"22000"|
