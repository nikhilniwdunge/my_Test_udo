@LoginLogOut
Feature: Login LogOut Feature
    
    Scenario: open URL
        Given I open the url "http://www.demo.guru99.com/v4/"
        Then  I expect that the url is "http://www.demo.guru99.com/v4/"
        And   I expect that the title is " Guru99 Bank Home Page "
    
    Scenario: login with valid credentials
        Given I open the url "http://www.demo.guru99.com/v4/"
        When  I set "mngr97977" to the inputfield "//input[@name='uid']"
        And   I set "mEgubYz" to the inputfield "//input[@name='password']"
        And   I click on the element "//input[@name='btnLogin']"
        And   I expect that the title is " Guru99 Bank Manager HomePage "    
        And   I click on the element "a[href='Logout.php']"
        When  I accept the alertbox
        Then  I expect that the title is " Guru99 Bank Home Page "    
   