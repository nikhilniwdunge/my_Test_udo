@validInvalidLogin

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
        Then  I expect that the title is " Guru99 Bank Manager HomePage "    

    Scenario: login with invalid credentials
        Given I open the url "http://www.demo.guru99.com/v4/"
        When  I set "Admin" to the inputfield "//input[@name='uid']"
        And   I set "admin123" to the inputfield "//input[@name='password']"
        And   I click on the element "//input[@name='btnLogin']"
        Then  I expect that element "#spanMessage" is visible
    