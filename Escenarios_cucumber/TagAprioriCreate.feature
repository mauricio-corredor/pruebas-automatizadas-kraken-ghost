#Escenario # 24
Feature: tags
    As an user I create a tag with random text with long strings a priori

Scenario Outline: Login with right data and faker post
  Given I go to ghost home screen
    When I click on login field
    And I write true data to login
    And I try to login
    And I should be on the right url
    And I go to tags home screen
    And I click on element having css selector "a.gh-list-data.gh-tag-list-title.ember-view"
    And I clear input field with css selector ".ember-text-field.gh-input.ember-view"
    And I put a tag with a long string of <tagLength>
    And I click on element having css selector ".gh-btn.gh-btn-blue.gh-btn-icon.ember-view"
    Then I should see element having css selector ".error" enabled
  
   
    Examples:
      | tagLength            |
      | 10   |



