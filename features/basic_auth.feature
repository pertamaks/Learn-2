Feature: This feature give user access into their account using basic authentication
  #Basic auth use system level pop up that cannot be automated with normal element finder
  Scenario: User login using valid credential
    Given User enter the website with username and password
    Then User can login
