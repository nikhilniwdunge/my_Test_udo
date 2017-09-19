Feature: Test the New Leave Application
    As a developer
    I want to be able to test the attributes of a given element

    Background:
        Given I open the site "/"

    Scenario: Set the content of a input field
        Given I open the url "http://opensource.demo.orangehrmlive.com/"
        When  I set "Admin" to the inputfield "#txtUsername"
        And   I set "admin" to the inputfield "#txtPassword"
        And   I click on the element "#btnLogin"  
        And   I expect that element "#welcome" is visible		
		And   I click on the element "#menu_time_viewTimeModule>b"
		And   I move to element "#menu_time_Timesheets"
		And   I move to element "#menu_time_viewEmployeeTimesheet"
		And   I click on the element "#menu_time_viewEmployeeTimesheet"
	    And   I set "John Smith" to the inputfield "#employee"
		And   I click on the element "#btnView"
		Then  I expect that element ".message.warning" is visible
	 
