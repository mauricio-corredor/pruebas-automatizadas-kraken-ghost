#Escenario # 24
Feature: Login into ghost
    As an user I want to authenticate myself within Ghost website

Scenario: Login with right data and faker post
  Given I go to ghost home screen
    When I click on login field
    And I write true data to login
    And I try to login
    And I click on element having css selector ".gh-secondary-action.gh-nav-new-post.ember-view" 
    And I write random text on element having css selector ".gh-editor-title.ember-text-area.gh-input.ember-view"
    And I click on element having css selector ".koenig-editor__editor.__mobiledoc-editor.__has-no-content"
    And I click on element having css selector ".ember-view.ember-basic-dropdown-trigger.gh-btn.gh-btn-outline.gh-publishmenu-trigger"
    And I click on element having css selector ".gh-btn.gh-btn-blue.gh-publishmenu-button.gh-btn-icon.ember-view"
    Then I should see element having css selector ".gh-notification-title" enabled
  
    
   
