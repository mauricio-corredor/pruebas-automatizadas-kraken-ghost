#Escenario # 22
Feature: Login into ghost
    As an user I want to authenticate myself within Ghost website

Scenario: Login failed with radom data with very long string chains

  Given I go to ghost home screen
    When I click on login field
    And I fill a wrong email and password
    And I try to login
    Then I expect to not be able to login
