Feature: Login


  @user1 @web
  Scenario: AS a user I login into the ghost home
    Given I navigate to page "http://localhost:2368/ghost/"
    When I enter "0123456789" into input field having id "ember10"
    And I enter "misw_pruebas@misw.com" into input field having id "ember8"
    And I click on element having id "ember12"
    Then I wait for 5 seconds
    And I should see text "misw"

