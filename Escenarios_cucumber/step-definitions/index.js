//Complete siguiendo las instrucciones del taller


var {Given} = require('cucumber');
var {When} = require('cucumber');
var {Then} = require('cucumber');
var {expect} = require('chai');
var {RandomThings} = require('../../support/randomThings');

Given('I go to ghost home screen', () => {
  browser.url('/ghost/');
});




When('I open the login screen', () => {
  $('button.login').waitForExist(5000);
  $('button.login').waitForDisplayed(5000);
  $('button.login').click();
});

When('I fill a wrong email and password', () => {

  
  var cajaLogIn = $('.cajaLogIn');
  var mailInput = $('.email.ember-text-field.gh-input.ember-view');
  mailInput.click();
  mailInput.setValue(RandomThings.randomEmail());
  var passwordInput = $('.password.ember-text-field.gh-input.ember-view');

  passwordInput.click();
  passwordInput.setValue(RandomThings.randomPassword());
});

When(/^I fill with (.*) and (.*)$/ , (email, password) => {

  
  var cajaLogIn = $('.cajaLogIn');
  var mailInput = $('.email.ember-text-field.gh-input.ember-view');
  mailInput.click();
  mailInput.setValue(email);
  var passwordInput = $('.password.ember-text-field.gh-input.ember-view');

  passwordInput.click();
  passwordInput.setValue(password);

});

When('I write true data to login', () => {

  
  var cajaLogIn = $('.cajaLogIn');
  var mailInput = $('.email.ember-text-field.gh-input.ember-view');
  mailInput.click();
  mailInput.setValue('misw_pruebas@misw.com');
  var passwordInput = $('.password.ember-text-field.gh-input.ember-view');

  passwordInput.click();
  passwordInput.setValue('0123456789');

});

When(/^I fill with a long string of (.*)$/ , (emailLength) => {


  var cajaLogIn = $('.cajaLogIn');
  var mailInput = $('.email.ember-text-field.gh-input.ember-view');
  mailInput.click();

  mailInput.setValue(RandomThings.randomBigstring(emailLength));
  var passwordInput = $('.password.ember-text-field.gh-input.ember-view');

  passwordInput.click();
  passwordInput.setValue(RandomThings.randomBigstring(emailLength));

 });

 When('I try to login', () => {
  $('#ember12').click();
  $('#ember12').waitForDisplayed(5000);

});

When(/^I put a tag with a long string of (.*)$/ , (tag) => {

  
  var cajaLogIn = $('.cajaLogIn');
  var tagInputName = $('.user-name.ember-text-field.gh-input.ember-view');
  tagInputName.click();
  tagInputName.setValue(RandomThings.randomBigstring(tag));

});

When(/^I put a name with a long string of (.*)$/ , (tag) => {

  
  var cajaLogIn = $('.cajaLogIn');
  var tagInputName = $('.ember-text-field.gh-input.ember-view');
  tagInputName.click();
  tagInputName.setValue(RandomThings.randomBigstring(tag, tag));

});


When ('I click on login field', () => {
  $('input.email.ember-text-field.gh-input.ember-view').click();
});

Given('I go to posts home screen', () => {
  browser.url('ghost/#/posts');
  
});

When (/^I navigate to page "(.*?)"$/, selector => {
  var actualUrl = selector;
  browser.url(actualUrl);
});

Given ('I go to tags home screen', () => {
  browser.url('ghost/#/tags');
});

Given ('I go to staff home screen', () => {
  browser.url('ghost/#/staff');
});


Then('I expect to not be able to login', () => {
  $('.main-error').waitForDisplayed(5000);

});

When (/^I click on element having css selector "(.*?)"$/, selector => {
  $(selector).click();
  
});

When (/^I click on element having id "(.*?)"$/, selector => {
  $(selector).click();
  
});

Then(/^I write random text on element having css selector "(.*?)"$/, selector => {
  var randomTextGen = RandomThings.randomString();
  var actualSelector = $(selector);
  actualSelector.click();
  actualSelector.setValue(randomTextGen);

});

Then(/^I write random text on element having id "(.*?)"$/, selector => {
  var randomTextGen = RandomThings.randomString();
  var actualSelector = $(selector);
  actualSelector.click();
  actualSelector.setValue(randomTextGen);

});

Then(/^I enter text "([^\"]*)" into field with id "([^\"]*)"$/,  (text, selector) => {

  var actualSelector = $(selector);
  var actualText = $(text);
  actualSelector.click();
  actualSelector.setValue(text);

});

When (/^I clear input field with css selector "([^\"]*)"$/, selector => {
  var actualSelector = $(selector);
  actualSelector.click();
  actualSelector.clearValue();

});


 Then('I expect to see {string}', error => {
  $(error).waitForDisplayed(10000);
  var alertText = browser.$(error).getText();
  expect(alertText).to.include(error);
  
});

 Then('I should be on the right url' , ()  => {

  $('.flex.flex-column.items-start.justify-center').waitForExist();
  var actualUrl = browser.getUrl();
  expect('http://localhost:2368/ghost/#/site').to.equal(actualUrl);
});

 Then (/^I should see element having css selector "([^\"]*)" enabled$/, selector => {
  let elem = $(selector);
  let isEnabled = elem.isEnabled();
  expect(isEnabled).to.equals(true);
 }
 );

