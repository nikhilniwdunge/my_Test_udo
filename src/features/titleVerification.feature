@TitleVerification
Feature: Title Verification of Application
    As a developer
    I want to be able to test if a page has a certain title

    Background:
        Given I open the site "/"

    Scenario: Test if the Orange HRM Live has the title "OrangeHRM"
        Given the title is "OrangeHRM"
        Then  I expect that element "#txtUsername" does exist
		And I expect that element "#txtPassword" does exist

    Scenario: Test if the Orange HRM Live does not have the title "Enterprise Application Portal"
        Given the title is not "Enterprise Application Portal"
        Then  the page url is not "https://eag.synechron.com/SYNE.UI/Attendance/Common/Home/Index#/"
       
