#Escenario # 24
Feature: tags
    As an user I Assign a tag with random text with long strings a priori

Scenario Outline: Login with right data and faker post
    Given I go to ghost home screen
    When I click on login field
    And I write true data to login
    And I try to login
    And I should be on the right url
    And I go to staff home screen
    And I navigate to page "http://localhost:2368/ghost/#/staff"
    And I click on element having css selector ".apps-card-left span.user-list-item-figure"
    And I click on element having id "#user-name"
    And I put a tag with a long string of <nameLength>
    And I click on element having css selector ".gh-btn.gh-btn-blue.gh-btn-icon.ember-view"
    Then I should see element having css selector ".gh-btn-red.ember-view" enabled

Examples:
      | nameLength            | error|
      | 100  | "Name is too long"   |



    
    

