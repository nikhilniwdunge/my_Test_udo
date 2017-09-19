@ViewLeaveBalanceReport
Feature: View Leave-Balance Report of Employee
    As a developer
    I want to be able to test the attributes of a given element

    Background:
        Given I open the site "/"

    Scenario: Test View Leave-Balance Report of Employee feature
        Given I open the url "http://opensource.demo.orangehrmlive.com/"
        When  I set "Admin" to the inputfield "#txtUsername"
        And   I set "admin" to the inputfield "#txtPassword"
        And   I click on the element "#btnLogin"
		And   I expect that element "#welcome" is visible
		And   I click on the element "#menu_leave_viewLeaveModule>b"
		And   I move to element "#menu_leave_Reports"
		And   I click on the element "#menu_leave_viewLeaveBalanceReport"
		And   I select the option with the text "Employee" for element "#leave_balance_report_type"
	    And   I clear the inputfield "#leave_balance_employee_empName"
		And   I set "Fiona Grace" to the inputfield "#leave_balance_employee_empName"
		And   I select the option with the text "01-01-2015 - 31-12-2015" for element "#period"
		Then   I click on the element "#viewBtn"
	    
	
        