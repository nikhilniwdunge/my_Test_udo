@BalanceEnquiry
Feature: Balance Enquiry after Deposit and Withdrawal amount
    As a developer
    I want to be able to test the attributes of a given element

    Background:
        Given I open the site "/" 

    Scenario: First check balance, deposit some ammount, withdrawal same amount then finally check balance.
        Given I open the url "http://www.demo.guru99.com/v4/"
        When  I set "mngr97977" to the inputfield "input[name='uid']"
        And   I set "mEgubYz" to the inputfield "input[name='password']"
        And   I click on the element "input[name='btnLogin']"
        
        And   I click on the element "a[href='BalEnqInput.php']"
        And   I set "33153" to the inputfield "input[name='accountno']"
        And   I click on the element "input[name='AccSubmit']"
        And   I expect that element "//*[@id='balenquiry']/tbody/tr[16]/td[2]" contains the text "10000"
        
        And   I click on the element "a[href='DepositInput.php']"
        And   I set "33153" to the inputfield "input[name='accountno']"  
        And   I set "25000" to the inputfield "input[name='ammount']" 
        And   I set "Salary-September 2017" to the inputfield "input[name='desc']"
        And   I click on the element "input[name='AccSubmit']" 
        
        And   I click on the element "a[href='WithdrawalInput.php']"
        And   I set "33153" to the inputfield "input[name='accountno']"  
        And   I set "25000" to the inputfield "input[name='ammount']" 
        And   I set "Mediclaim Recovery-Parent" to the inputfield "input[name='desc']"
        And   I click on the element "input[name='AccSubmit']"

        And   I click on the element "a[href='BalEnqInput.php']"
        And   I set "33153" to the inputfield "input[name='accountno']"
        And   I click on the element "input[name='AccSubmit']"
        Then   I expect that element "//*[@id='balenquiry']/tbody/tr[16]/td[2]" contains the text "10000"   
	 
