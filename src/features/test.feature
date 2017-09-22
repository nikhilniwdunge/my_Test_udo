Feature: Balance Enquiry after Deposit and Withdrawal amount
    As a developer
    I want to be able to test the attributes of a given element

    Background:
        Given I open the site "/"           

    Scenario Outline: login with valid credentials
        When  I set "<username>" to the inputfield "input[name='uid']"
        And   I set "<password>" to the inputfield "input[name='password']"
        And   I click on the element "input[name='btnLogin']"
        
        And   I click on the element "a[href='BalEnqInput.php']"
        And   I set "<AccountId>" to the inputfield "input[name='accountno']"
        And   I click on the element "input[name='AccSubmit']"
        And   I store text of element "//*[@id='balenquiry']/tbody/tr[16]/td[2]" into variable
        Then   Print variable "outputText"
        
 Examples:
    | username   | password | AccountId |
    | mngr97977  | mEgubYz  | 33153     |
    | mngr97977  | mEgubYz  | 33153     |