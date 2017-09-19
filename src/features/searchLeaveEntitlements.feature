@SearchLeaveEntitlements
Feature: Search Leave Entitlements Feature
    As a developer
    I want to be able to test the attributes of a given element

    Background:
        Given I open the site "/"
		
	Scenario: Add Location Feature
        Given I open the url "http://opensource.demo.orangehrmlive.com/"
        When  I set "Admin" to the inputfield "#txtUsername"
        And   I set "admin" to the inputfield "#txtPassword"
        And   I click on the element "#btnLogin"
		And   I expect that element "#welcome" is visible
		And   I click on the element "#menu_leave_viewLeaveModule>b"
		And   I move to element "#menu_leave_Entitlements"
		And   I click on the element "#menu_leave_viewLeaveEntitlements"
		And   I clear the inputfield "#entitlements_employee_empName"
        And   I set "Fiona Grace" to the inputfield "#entitlements_employee_empName"
		And   I select the option with the text "Vacation US" for element "#entitlements_leave_type"
		And   I select the option with the text "01-01-2015 - 31-12-2015" for element "#period"
		And  I click on the element "#searchBtn"