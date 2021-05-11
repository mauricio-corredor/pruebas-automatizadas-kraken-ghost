Feature: Post


  @user1 @web
  Scenario: As a user I login and then I unpublish a post
    Given I navigate to page "http://localhost:2368/ghost/"
    When I enter "0123456789" into input field having id "ember10"
    And I enter "misw_pruebas@misw.com" into input field having id "ember8"
    And I click on element having id "ember12"
    And I wait for 5 seconds
    
    And I navigate to page "http://localhost:2368/ghost/#/posts/"
    
    And I click on element having css selector "a.permalink.gh-list-data.gh-post-list-title.ember-view"
    
    
    And I click on element having css selector "div.gh-btn.gh-btn-outline.gh-publishmenu-trigger.ember-basic-dropdown-trigger.ember-view"
    
    And I click on element having css selector "div.gh-publishmenu-radio-content"
    

    And I click on element having css selector "button.gh-btn.gh-btn-blue.gh-publishmenu-button.gh-btn-icon.ember-view"

    And I wait for 5 seconds

    And I navigate to page "http://localhost:2368/ghost/#/posts/"

    
    And I click on element having css selector "a.permalink.gh-list-data.gh-post-list-title.ember-view"
    
    Then I should see text "Draft"

   
    
    

