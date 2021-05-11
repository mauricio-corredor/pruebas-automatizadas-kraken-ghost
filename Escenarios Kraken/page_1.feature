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
    And I click on element having css selector "a.gh-btn.gh-btn-green.ember-view"
    
    And I enter "Prueba page 1" into input field having css selector "textarea.gh-editor-title.ember-text-area.gh-input.ember-view"
     
    And I enter "Prueba page 1" into input field having css selector "div.koenig-editor__editor-wrapper div.koenig-editor__editor.__mobiledoc-editor.__has-no-content"
    
    And I click on element having css selector "div.gh-btn.gh-btn-outline.gh-publishmenu-trigger.ember-basic-dropdown-trigger.ember-view"
    
    And I click on element having css selector "button.gh-btn.gh-btn-blue.gh-publishmenu-button.gh-btn-icon.ember-view"

    And I wait for 5 seconds

    Then I navigate to page "http://localhost:2368/ghost/pages"

    And I should see text "Prueba page 1"

   
    
    

