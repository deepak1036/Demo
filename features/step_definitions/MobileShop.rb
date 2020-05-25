Given(/^I launch the demo cart application and home page$/) do
  $browser.goto"demo.opencart.com"
  $browser.window.maximize
end

Then(/^I click on phone and PD's menu option$/) do
  $browser.a(text:'Phones & PDAs').click
end

Then(/^I select Iphone mobile and Click on iphone link$/) do
  $browser.a(text:'iPhone').click
end

Then(/^I Verify that details and click on add to cart option$/) do
  $browser.button(id: 'button-cart').click
end

Then(/^I click on Shopping Cart option$/) do

  $browser.span(id: 'cart-total').click
  $browser.i(class: 'fa fa-times').click
  $browser.i(class: 'fa fa-share').click

end

Then(/^I verify product details an click on Continue shopping  link$/) do
  $browser.a(text:'Continue').click
end

Then(/^I verify that message "([^"]*)" displayed$/) do |arg|

  expect($browser.div(:class, "alert alert-success alert-dismissible").text.include? "Success: You have added iPhone to your shopping cart!").to be true
  puts"Text Verified successfully"
  #expect($browser.div(:class, "alert alert-success alert-dismissible").text.include? "adfasdfYou have added iPhone to your shopping cart!").to be true
end