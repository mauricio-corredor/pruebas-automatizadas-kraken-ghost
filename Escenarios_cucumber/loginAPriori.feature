#Escenario # 21
Feature: Login into ghost
    As an user I want to authenticate myself within Ghost website

Scenario Outline: Login failed with wrong inputs (A Priori) 

  Given I go to ghost home screen
    When I click on login field
    And I fill with <email> and <password>
    And I try to login
    Then I expect to not be able to login

    Examples:
      | email            | password |
      | asdfas@misw.com  | asdfasdf         |
      | asdfasdf@misw.com   |    0123456789  |
      | sdfgdsdsgds      |    0123456789  |
      | sdfgdsdsgds      |      |