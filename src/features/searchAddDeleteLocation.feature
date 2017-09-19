@AddSearchDeleteLocation
Feature: Add, Search and Delete Location Feature
    As a developer
    I want to be able to test Add, Search and Delete Location Feature of application

    Background:
        Given I open the site "/"
		
	Scenario: First Delete All Location from available Feature
          Given I open the url "http://opensource.demo.orangehrmlive.com/"
        When  I set "Admin" to the inputfield "#txtUsername"
        And   I set "admin" to the inputfield "#txtPassword"
        And   I click on the element "#btnLogin"
		And   I expect that element "#welcome" is visible
		And   I click on the element "#menu_admin_viewAdminModule>b"
		And   I move to element "#menu_admin_Organization"
		And   I click on the element "#menu_admin_viewLocations"
		And   I expect that checkbox "#ohrmList_chkSelectAll" is not checked
		And   I click on the element "#ohrmList_chkSelectAll"
		And   I click on the element "#btnDelete"
		Then  I click on the element "#dialogDeleteBtn"
		
	Scenario: Add Location Feature
		Given   I expect that element "#welcome" is visible
		And   I click on the element "#menu_admin_viewAdminModule>b"
		And   I move to element "#menu_admin_Organization"
		And   I click on the element "#menu_admin_viewLocations"
		And   I click on the element "#btnAdd"
		And   I clear the inputfield "#location_name"
        And   I set "Ascendas" to the inputfield "#location_name"
		And   I select the option with the text "India" for element "#location_country"
		And   I clear the inputfield "#location_province"
        And   I set "Maharashtra" to the inputfield "#location_province"
		And   I clear the inputfield "#location_city"
        And   I set "Pune" to the inputfield "#location_city"
		And   I clear the inputfield "#location_address"
        And   I set "CEDAR Building, Rajiv Gandhi Infotech Park, Hinjewadi Phase III" to the inputfield "#location_address"
		And   I clear the inputfield "#location_zipCode"
        And   I set "411057" to the inputfield "#location_zipCode"
		And   I clear the inputfield "#location_phone"
        And   I set "2020451234" to the inputfield "#location_phone"
		Then  I click on the element "#btnSave"
	 

    Scenario: Search and Delete Location Feature
        Given I expect that element "#welcome" is visible
		And   I click on the element "#menu_admin_viewAdminModule>b"
		And   I move to element "#menu_admin_Organization"
		And   I click on the element "#menu_admin_viewLocations"
		And   I clear the inputfield "#searchLocation_name"
        And   I set "Ascendas" to the inputfield "#searchLocation_name"
		And   I click on the element "#btnSearch"
		And   I expect that element "//tbody/tr/td[2]/a" is visible
		And   I expect that checkbox "#ohrmList_chkSelectAll" is not checked
		And   I click on the element "#ohrmList_chkSelectAll"
		And   I click on the element "#btnDelete"
		Then  I click on the element "#dialogDeleteBtn"