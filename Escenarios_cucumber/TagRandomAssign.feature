#Escenario # 24
Feature: tags
    As an user I create a tag with random text with long strings a priori

Scenario: Login with right data and faker post
    Given I go to ghost home screen
    When I click on login field
    And I write true data to login
    And I try to login
    And I should be on the right url
    And I go to tags home screen
    And I navigate to page "http://localhost:2368/ghost/pages"
    And I click on element having css selector "a.gh-btn.gh-btn-green.ember-view"
    And I click on element having css selector "textarea.gh-editor-title.ember-text-area.gh-input.ember-view"
    And I write random text on element having css selector "textarea.gh-editor-title.ember-text-area.gh-input.ember-view"
    And I click on element having css selector ".post-settings"
    And I click on element having css selector ".post-settings"
    And I click on element having id "#tag-input" 
    And I click on element having css selector " li.ember-power-select-option:nth-child(2)"
    And I click on element having css selector "button.close.settings-menu-header-action" 
    And I click on element having css selector "div.gh-btn.gh-btn-outline.gh-publishmenu-trigger.ember-basic-dropdown-trigger.ember-view"
    And I click on element having css selector "button.gh-btn.gh-btn-blue.gh-publishmenu-button.gh-btn-icon.ember-view"
    Then I should see element having css selector ".gh-btn-green" enabled

   
    
    

