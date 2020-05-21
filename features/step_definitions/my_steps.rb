Given(/^I launch the demo cart application$/) do
  $browser.goto"demo.opencart.com"
  $browser.window.maximize
end

Then(/^I click on the My Account link$/) do
  $browser.a(href:"https://demo.opencart.com/index.php?route=account/account").click

end

Then(/^I Click on Register option$/) do
  $browser.a(href:"https://demo.opencart.com/index.php?route=account/register").click
end

Then(/^I Enter user details$/) do
  $browser.text_field(id:'input-firstname').set 'abc'
  $browser.text_field(id:'input-lastname').set 'def'
  $browser.text_field(id:'input-email').set 'abc@gmail.com'
  $browser.text_field(id:'input-telephone').set '0401857496'
  $browser.text_field(id:'input-password').set 'fasr@g12'
  $browser.text_field(id:'input-confirm').set 'fasr@g12'
  $browser.radio(name:'newsletter').present?
  $browser.radio(name:'newsletter',:index=>0).click
end