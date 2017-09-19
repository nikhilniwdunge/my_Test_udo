@AddandDeleteVacancies
Feature: Add and Delete Vacancies Feature
    As a developer
    I want to be able to test Add and Delete Vacancies Feature of application

    Background:
        Given I open the site "/"
		
	Scenario: First Delete All Vacancies from List Feature
        Given I open the url "http://opensource.demo.orangehrmlive.com/"
        When  I set "Admin" to the inputfield "#txtUsername"
        And   I set "admin" to the inputfield "#txtPassword"
        And   I click on the element "#btnLogin"  
        And   I expect that element "#welcome" is visible		
		And   I click on the element "#menu_recruitment_viewRecruitmentModule>b"
		And   I move to element "#menu_recruitment_viewJobVacancy"
		And   I click on the element "#menu_recruitment_viewJobVacancy"
		And   I expect that checkbox "#ohrmList_chkSelectAll" is not checked
		And   I click on the element "#ohrmList_chkSelectAll"
		And   I click on the element "#btnDelete"
		Then  I click on the element "#dialogDeleteBtn"

		
	Scenario: Add Performance Vacancies Feature
		Given I expect that element "#welcome" is visible
		And   I click on the element "#menu_recruitment_viewRecruitmentModule>b"
		And   I move to element "#menu_recruitment_viewJobVacancy"
		And   I click on the element "#menu_recruitment_viewJobVacancy"
		And   I click on the element "#btnAdd"
		And   I select the option with the text "IT Executive" for element "#addJobVacancy_jobTitle"
		And   I clear the inputfield "#addJobVacancy_name"
        And   I set "IT Executive-QA Autoamtion Enggineer" to the inputfield "#addJobVacancy_name"
		And   I clear the inputfield "#addJobVacancy_hiringManager"
        And   I set "Thomas Fleming" to the inputfield "#addJobVacancy_hiringManager"
		And   I clear the inputfield "#addJobVacancy_noOfPositions"
        And   I set "12" to the inputfield "#addJobVacancy_noOfPositions"
		And   I clear the inputfield "#addJobVacancy_description"
        And   I set "QA Autoamtion Enggineer with 4+ Exp. on Appium,Perfecto" to the inputfield "#addJobVacancy_description"
		Then  I click on the element "#btnSave"
	 

    Scenario: After add, Delete All Vacancies from List Feature
        Given I expect that element "#welcome" is visible        
		And   I click on the element "#menu_recruitment_viewRecruitmentModule>b"
		And   I move to element "#menu_recruitment_viewJobVacancy"
		And   I click on the element "#menu_recruitment_viewJobVacancy"
		And   I expect that checkbox "#ohrmList_chkSelectAll" is not checked
		And   I click on the element "#ohrmList_chkSelectAll"
		And   I click on the element "#btnDelete"
		Then  I click on the element "#dialogDeleteBtn"