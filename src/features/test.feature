Feature: Balance Enquiry :-

                 

    Scenario Outline: login with valid credentials
        Given I open the site <Bankurl> 
        When  I set <username> to the inputfield "userNameTextbox"
        And   I set <password> to the inputfield "passwordTextbox"
        And   I click on the element "loginButton"
        
        And   I click on the element "balanceEnquiryLink"
        And   I set <accountNumber> to the inputfield "AccountNumberTextBox"
        And   I click on the element "submitButton"
        And   I store text of element "BalanceText" into variable "currentBalance"
        Then   Print variable "currentBalance"
   
    Examples:
          |Bankurl|username|password|accountNumber|
          |"/"|"mngr97977"|"mEgubYz"|"33153"|
          |"/"|"mngr97977"|"mEgubYz"|"33155"|
          |"/"|"mngr97977"|"mEgubYz"|"33156"|
          |"/"|"mngr97977"|"mEgubYz"|"33157"|
          

          


