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


When ('I click on login field', () => {
  $('input.email.ember-text-field.gh-input.ember-view').click();
});

Then('I expect to not be able to login', () => {
  $('.main-error').waitForDisplayed(5000);

});

When (/^I click on element having css selector "(.*?)"$/, selector => {
  $(selector).click();
  
});

Then(/^I write random text on element having css selector "(.*?)"$/, selector => {
  var randomTextGen = RandomThings.randomString();
  var actualSelector = $(selector);
  actualSelector.click();
  actualSelector.setValue(randomTextGen);

});


 Then('I expect to see {string}', error => {
    $(error).waitForDisplayed(5000);
    var alertText = browser.$(error).getText();
    expect(alertText).to.include(error);
    
 });

 Then('I expect to see {string}', error => {
  $(error).waitForDisplayed(5000);
  var alertText = browser.$(error).getText();
  expect(alertText).to.include(error);
  
});


  

 Then('I should be on the right url' , ()  => {

  $('.flex.flex-column.items-start.justify-center').waitForExist();
  var actualUrl = browser.getUrl();
  expect('http://localhost:2368/ghost/#/site').to.equal(actualUrl);
});

