#Escenario # 24
Feature: Login into ghost
    As an user I want to authenticate myself within Ghost website

Scenario: Login with right data and faker post
  Given I go to ghost home screen
    When I click on login field
    And I write true data to login
    And I try to login
    And I should be on the right url
    And I click on element having css selector ".gh-secondary-action.gh-nav-new-post.ember-view" 
    And I write random text on element having css selector ".gh-editor-title.ember-text-area.gh-input.ember-view"
   
