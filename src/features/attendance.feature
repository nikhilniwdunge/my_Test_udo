@Attendance
Feature: Attendance feature of Employee
    As a developer
    I want to be able to test the attributes of a given element

    Background:
        Given I open the site "/"

    Scenario: Test Attendance feature of Employee for OrangeHRM Live
        Given I open the url "http://opensource.demo.orangehrmlive.com/"
        When  I set "Admin" to the inputfield "#txtUsername"
        And   I set "admin" to the inputfield "#txtPassword"
        And   I click on the element "#btnLogin"
		And   I expect that element "#welcome" is visible
		And   I click on the element "#menu_time_viewTimeModule>b"
		And   I move to element "#menu_attendance_Attendance"
		And   I click on the element "#menu_attendance_viewAttendanceRecord"
        And   I set "Fiona Grace" to the inputfield "#attendance_employeeName_empName"
		And   I set "14-09-2017" to the inputfield "#attendance_date"
		And   I click on the element "#btView"
		Then  I expect that element "//*[@id='resultTable']/tbody/tr/td[2]" is visible
	    
		
	