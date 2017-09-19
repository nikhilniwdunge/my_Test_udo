@LoginLogOut
Feature: Login LogOut Feature
    As a Developer in Test
    I want to test if the github.com failed login screen displays a error

    Scenario: open URL
        Given I open the url "http://opensource.demo.orangehrmlive.com/"
        Then  I expect that the url is "http://opensource.demo.orangehrmlive.com/"
        And   I expect that the title is "OrangeHRM"

    Scenario: login with invalid credentials
        Given I open the url "http://opensource.demo.orangehrmlive.com/"
        When  I set "Admin" to the inputfield "#txtUsername"
        And   I set "admin123" to the inputfield "#txtPassword"
        And   I click on the element "#btnLogin"
		Then  I expect that element "#spanMessage" is visible
		
	Scenario: login and LogOut with valid credentials
        Given I open the url "http://opensource.demo.orangehrmlive.com/"
        When  I set "Admin" to the inputfield "#txtUsername"
        And   I set "admin" to the inputfield "#txtPassword"
        And   I click on the element "#btnLogin"
		And   I expect that element "#welcome" is visible  
		And   I click on the element "#welcome"
		And   I click on the element ".//*[@id='welcome-menu']/ul/li[2]/a"
		Then  I expect that the title is "OrangeHRM"
        