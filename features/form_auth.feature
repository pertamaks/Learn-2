Feature: This feature make user can login using form auth.
  Scenario: User login into form auth using valid credential
    Given User enter the website
    And User go to the form auth page
    And User enter the valid username and password
    Then User Successfully login into the form auth