#Escenario # 23
Feature: Login into ghost
    As an user I want to authenticate myself within Ghost website

Scenario Outline: Login failed with wrong inputs (A Priori) 

  Given I go to ghost home screen
    When I click on login field
    And I fill with a long string of <emailLength>
    And I try to login
    Then I expect to not be able to login

    Examples:
      | emailLength            |
      | 10  |
      | 100   |
      | 150      |
      | 200      |