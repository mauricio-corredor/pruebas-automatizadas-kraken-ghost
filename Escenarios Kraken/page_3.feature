Feature: Login


  @user1 @web
  Scenario: AS a user I login and then I logout
    Given I navigate to page "http://localhost:2368/ghost/"
    When I enter "0123456789" into input field having id "ember10"
    And I enter "misw_pruebas@misw.com" into input field having id "ember8"
    And I click on element having id "ember12"
    And I wait for 5 seconds
    And I click on element having css selector ".gh-mobile-nav-bar-more"
    And I navigate to page "http://localhost:2368/ghost/pages"
    
    And I click on element having css selector "a.permalink.gh-list-data.gh-post-list-title.ember-view"
    And I click on element having css selector "button.post-settings"
    
    And I click on element having css selector "button.gh-btn.gh-btn-hover-red.gh-btn-icon.settings-menu-delete-button"
    
    And I click on element having css selector "button.gh-btn.gh-btn-red.gh-btn-icon.ember-view"
    
    Then I should see text "Post"
  
    

