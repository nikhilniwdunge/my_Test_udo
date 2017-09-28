Feature: Balance Enquiry :-

    Background:
        Given I open the site "Bank_url"           

    Scenario Outline: login with valid credentials
        When  I set "<un>" to the inputfield "userNameTextbox"
        And   I set "<pw>" to the inputfield "passwordTextbox"
        And   I click on the element "loginButton"
        
        And   I click on the element "balanceEnquiryLink"
        And   I set "<an>" to the inputfield "AccountNumberTextBox"
        And   I click on the element "submitButton"
        And   I store text of element "BalanceText" into variable "currentBalance"
        Then   Print variable "currentBalance"
   
    Examples:
          |un|pw|an|
          |mngr97977|mEgubYz|33153|
          


