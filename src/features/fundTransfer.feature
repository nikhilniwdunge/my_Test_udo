@fundTransfer
Feature: Balance Enquiry after fundTransfer from two accounts
    As a developer
    I want to be able to test the attributes of a given element

    Background:
        Given I open the site "/" 

    Scenario: First check balance, fundTransfer from account1 to account2,fundTransfer from account2 to account1, then finally check balance.

        Given I open the url "http://www.demo.guru99.com/v4/"
        When  I set "mngr97977" to the inputfield "input[name='uid']"
        And   I set "mEgubYz" to the inputfield "input[name='password']"
        And   I click on the element "input[name='btnLogin']"
        
        And   I click on the element "a[href='BalEnqInput.php']"
        And   I set "33155" to the inputfield "input[name='accountno']"
        And   I click on the element "input[name='AccSubmit']"
        And   I expect that element "//*[@id='balenquiry']/tbody/tr[16]/td[2]" contains the text "12000"

        And   I click on the element "a[href='BalEnqInput.php']"
        And   I set "33157" to the inputfield "input[name='accountno']"
        And   I click on the element "input[name='AccSubmit']"
        And   I expect that element "//*[@id='balenquiry']/tbody/tr[16]/td[2]" contains the text "100000"
        
        And   I click on the element "a[href='FundTransInput.php']"
        And   I set "33155" to the inputfield "input[name='payersaccount']"  
        And   I set "33157" to the inputfield "input[name='payeeaccount']"
        And   I set "5000" to the inputfield "input[name='ammount']" 
        And   I set "Atul-Ritesh" to the inputfield "input[name='desc']"
        And   I click on the element "input[name='AccSubmit']" 

        And   I click on the element "a[href='BalEnqInput.php']"
        And   I set "33155" to the inputfield "input[name='accountno']"
        And   I click on the element "input[name='AccSubmit']"
        And   I expect that element "//*[@id='balenquiry']/tbody/tr[16]/td[2]" contains the text "7000"

        And   I click on the element "a[href='BalEnqInput.php']"
        And   I set "33157" to the inputfield "input[name='accountno']"
        And   I click on the element "input[name='AccSubmit']"
        And   I expect that element "//*[@id='balenquiry']/tbody/tr[16]/td[2]" contains the text "105000"
        
        And   I click on the element "a[href='FundTransInput.php']"
        And   I set "33157" to the inputfield "input[name='payersaccount']"  
        And   I set "33155" to the inputfield "input[name='payeeaccount']"
        And   I set "5000" to the inputfield "input[name='ammount']" 
        And   I set "Ritesh-Atul" to the inputfield "input[name='desc']"
        And   I click on the element "input[name='AccSubmit']" 

        And   I click on the element "a[href='BalEnqInput.php']"
        And   I set "33155" to the inputfield "input[name='accountno']"
        And   I click on the element "input[name='AccSubmit']"
        And   I expect that element "//*[@id='balenquiry']/tbody/tr[16]/td[2]" contains the text "12000"

        And   I click on the element "a[href='BalEnqInput.php']"
        And   I set "33157" to the inputfield "input[name='accountno']"
        And   I click on the element "input[name='AccSubmit']"
        And   I expect that element "//*[@id='balenquiry']/tbody/tr[16]/td[2]" contains the text "100000"
