@validInvalidLogin
Feature: login with Valid and Inavlid credentials
    As a Developer in Test
    I want to test if the github.com failed login screen displays a error

    Scenario: open URL
        Given I open the url "http://opensource.demo.orangehrmlive.com/"
        Then  I expect that the url is "http://opensource.demo.orangehrmlive.com/"
        And   I expect that the title is "OrangeHRM"

    Scenario Outline : login with invalid credentials
        Given I open the url "http://opensource.demo.orangehrmlive.com/"
        When  I set "Admin" to the inputfield "#txtUsername"
        And   I set "admin" to the inputfield "#txtPassword"
        And   I click on the element "#btnLogin"
		Then  I expect that element "#spanMessage" is visible
	
	
	Scenario Outline : login with valid credentials
        Given I open the url "http://opensource.demo.orangehrmlive.com/"
        When  I set "Admin" to the inputfield "#txtUsername"
        And   I set "admin" to the inputfield "#txtPassword"
        And   I click on the element "#btnLogin"
		Then  I expect that element "#welcome" is visible  
    