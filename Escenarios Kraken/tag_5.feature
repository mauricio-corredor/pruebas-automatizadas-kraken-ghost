Feature: tag


  @user1 @web
  Scenario: AS a user I modify a tag
    Given I navigate to page "http://localhost:2368/ghost/"
    When I enter "0123456789" into input field having id "ember10"
    And I enter "misw_pruebas@misw.com" into input field having id "ember8"
    And I click on element having id "ember12"
    And I wait for 5 seconds
    And I click on element having css selector ".gh-mobile-nav-bar-more"
    And I navigate to page "http://localhost:2368/ghost/#/tags"
    
    And I click on element having css selector "a.gh-list-data.gh-tag-list-title.ember-view"
    
    And I enter "Modifico descripcion" into input field having css selector ".gh-tag-details-textarea.ember-text-area.gh-input.ember-view"
    

    And I click on element having css selector "button.gh-btn.gh-btn-blue.gh-btn-icon.ember-view"


    Then I navigate to page "http://localhost:2368/ghost/#/tags"

    And I should see text "Modifico"

   
    
    

