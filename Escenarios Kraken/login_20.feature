Feature: Login


  @user1 @web
  Scenario: AS a user I login and then I logout
    Given I navigate to page "http://localhost:2368/ghost/"
    When I enter "0123456789" into input field having id "ember10"
    And I enter "misw_pruebas@misw.com" into input field having id "ember8"
    And I click on element having id "ember12"
    And I wait for 5 seconds
    And I click on element having css selector ".gh-mobile-nav-bar-more"
    And I click on element having css selector ".flex-column"
    And I click on element having css selector ".dropdown-item.user-menu-signout.ember-view"   
    Then I should see text "Sign in"
   
    
    

