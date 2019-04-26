Feature: This feature is to learn about the dynamics loading page
  Scenario: User enter some dynamic loading page with hidden element
    Given User enter the website
    And User go to the dynamic loading selector
    When User on the loading selector, user select the hidden element page
    When User on the hidden loading page, user start the loading
    Then User must see the content after the loading finished