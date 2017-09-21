Feature: Balance Enquiry after Deposit and Withdrawal amount
    As a developer
    I want to be able to test the attributes of a given element

    Background:
        Given I open the site "/"           

    Scenario: login with valid credentials
        Given I open the url "http://www.demo.guru99.com/v4/"
        When  I set "mngr97977" to the inputfield "input[name='uid']"
        And   I set "mEgubYz" to the inputfield "input[name='password']"
        And   I click on the element "input[name='btnLogin']"
        
        And   I click on the element "a[href='BalEnqInput.php']"
        And   I set "33153" to the inputfield "input[name='accountno']"
        And   I click on the element "input[name='AccSubmit']"
        And   I store text of element "//*[@id='balenquiry']/tbody/tr[16]/td[2]" into variable
        And   Print variable "outputText"

