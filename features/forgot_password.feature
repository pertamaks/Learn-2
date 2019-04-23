Feature: Give user retrieve his password
  Scenario: User want to retrieve his password
    Given User enter the website
    And User go to forgot password menu
    And User enter the email address
    Then Password reset successfully sent