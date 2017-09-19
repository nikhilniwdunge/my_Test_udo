@AddandDeletePerformanceTracker
Feature: Add and Delete Performance Tracker Feature
    As a developer
    I want to be able to test Add and Delete Performance Tracker Feature of application

    Background:
        Given I open the site "/"
		
	Scenario: First Delete All Performance Tracker from List Feature
        Given I open the url "http://opensource.demo.orangehrmlive.com/"
        When  I set "Admin" to the inputfield "#txtUsername"
        And   I set "admin" to the inputfield "#txtPassword"
        And   I click on the element "#btnLogin"  
        And   I expect that element "#welcome" is visible		
		And   I click on the element "#menu__Performance>b"
		And   I move to element "#menu_performance_Configure"
		And   I click on the element "#menu_performance_addPerformanceTracker"
		And   I expect that checkbox "#ohrmList_chkSelectAll" is not checked
		And   I click on the element "#ohrmList_chkSelectAll"
		And   I click on the element "#btnDelete"
		Then  I click on the element "#dialogDeleteBtn"

		
	Scenario: Add Performance Tracker Feature
		Given I expect that element "#welcome" is visible
		And   I click on the element "#menu__Performance>b"
		And   I move to element "#menu_performance_Configure"
		And   I click on the element "#menu_performance_addPerformanceTracker"
		And   I click on the element "#btnAdd"
		And   I clear the inputfield "#addPerformanceTracker_tracker_name"
        And   I set "MyPerformanceTracker" to the inputfield "#addPerformanceTracker_tracker_name"
		And   I clear the inputfield "#addPerformanceTracker_employeeName_empName"
        And   I set "Fiona Grace" to the inputfield "#addPerformanceTracker_employeeName_empName"
		And   I select the option with the text "John Smith" for element "#addPerformanceTracker_availableEmp"
		And   I click on the element "#btnAssignEmployee"
		Then  I click on the element "#btnSave"
	 

    Scenario: After add, Delete All Performance Tracker from List Feature
        Given I expect that element "#welcome" is visible        
		And   I click on the element "#menu__Performance>b"
		And   I move to element "#menu_performance_Configure"
		And   I click on the element "#menu_performance_addPerformanceTracker"
		And   I expect that checkbox "#ohrmList_chkSelectAll" is not checked
		And   I click on the element "#ohrmList_chkSelectAll"
		And   I click on the element "#btnDelete"
		Then   I click on the element "#dialogDeleteBtn"
		