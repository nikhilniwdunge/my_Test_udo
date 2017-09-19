@AttendanceSummary
Feature: Attendance Summary feature of Employee
    As a developer
    I want to be able to test the attributes of a given element

    Background:
        Given I open the site "/"

    Scenario: Test the Attendance Summary feature of Employee 
        Given I open the url "http://opensource.demo.orangehrmlive.com/"
        When  I set "Admin" to the inputfield "#txtUsername"
        And   I set "admin" to the inputfield "#txtPassword"
        And   I click on the element "#btnLogin"
		And   I expect that element "#welcome" is visible
		And   I click on the element "#menu_time_viewTimeModule>b"
		And   I move to element "#menu_time_Reports"
		And   I click on the element "#menu_time_displayAttendanceSummaryReportCriteria"
		And   I clear the inputfield "#employee_name"
        And   I set "Fiona Grace" to the inputfield "#employee_name"
		And   I select the option with the text "HR Executive" for element "#attendanceTotalSummary_jobTitle"
		And   I select the option with the text "Administration" for element "#attendanceTotalSummary_subUnit"
		And   I select the option with the text "Part-Time Contract" for element "#attendanceTotalSummary_employeeStatus"
		And   I set "11-05-2017" to the inputfield "#from_date"
		And   I set "14-09-2017" to the inputfield "#to_date"
		And   I click on the element "#viewbutton"
		Then  I expect that element "//tbody/tr/td[1]" is visible