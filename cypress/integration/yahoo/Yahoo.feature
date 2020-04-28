Feature: yahoo:Yahoo.feature

    Yahoo mail tests

    @auto
    @tc:1
    @updated:false
    Scenario: 1- Elements presence on the yahoo page
        Given I visit "baseUrl"
        And I see "aaa" element with identifier "bb" present
        Then I see "Email address" element with identifier "#login-username" present
        And I see "Next button" element with identifier "#login-signin" present
        And I see "Stay signed in checkbox" element with identifier "[class='stay-signed-in checkbox-container']" present
        And I see "Forgot username" element with identifier "[class='helper-item arlink']" present
        And I see "Create an account" element with identifier "#createacc" present

    @auto
    @tc:2
    @updated:false
    Scenario: 2- Email validation
        Given I visit "baseUrl"
        And I click "Next button" element with identifier "#login-signin"
        Then I see "Error message" element with identifier "#username-error" present

    @auto
    @tc:3
    @updated:false
    Scenario: 3- This will be a failing Scenario
        Given I visit "baseUrl"
        And I click "Non existing" element with identifier "#nonexisting"
        Then I see "nothing" element with identifier "#nothing" present