Feature: tag

  @user1 @web
  Scenario: AS a user I login and then I delete a tag
    Given I navigate to page "http://localhost:2368/ghost/"
    When I enter "0123456789" into input field having id "ember10"
    And I enter "misw_pruebas@misw.com" into input field having id "ember8"
    And I click on element having id "ember12"
    And I wait for 5 seconds
    And I click on element having css selector ".gh-mobile-nav-bar-more"
    And I navigate to page "http://localhost:2368/ghost/tags"
    
    And I click on element having css selector "a.gh-list-data.gh-tag-list-title.ember-view"
    
    And I click on element having css selector "button.gh-btn.gh-btn-red.gh-btn-icon.mb15"
    
    And I click on element having css selector "button.gh-btn.gh-btn-red.gh-btn-icon.ember-view"
    
    
    Then I should see text "Post"
    
    

