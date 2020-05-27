And(/^I am on Optus Home page$/) do
  $browser.goto"https://www.optus.com.au/"
  $browser.window.maximize

end

Then(/^I click on "([^"]*)" link in Menu tab$/) do |arg|
  #$browser.link(text: 'Mobile').click
  $browser.link(href: '/mobile').click
end

Then(/^I Click on "([^"]*)" link$/) do |arg|
  $browser.link(href: '/mobile/plans/shop?SID=con:springhome:1up:1:apr20:postmob:Open4bus:OFB').click
end

Then(/^I Click on "([^"]*)"  in choose plan page$/) do |arg|
  $browser.button(text: 'Select Plan' ,:index=>2).click
end

Then(/^I click on click on "([^"]*)" link in choose plan page$/) do |arg|
  $browser.button(text: 'Continue with SIM plan only').click
end

Then(/^I click on "([^"]*)" link in configure Service page$/) do |arg|

  ## Wait.until {browser.text =="I'm new to Optus"}
  #puts "looking for customer intent page"
  #if $browser.label(text: "I'm new to Optus").wait_until(timeout: 60, &:present?) == false
  #  puts "refresh page"
  $browser.refresh
  $browser.label(text:"I'm new to Optus").double_click
  #end
  #puts "selecting customer intent page"
  # $browser.label(text:"I'm new to Optus").wait_until(timeout: 60, &:present?).double_click

end

Then(/^I click on Proceed to "([^"]*)" link in configure Service page$/) do |arg|
  # $browser.span(class: 'icon icon-chevron-right right-icon s').wait_until(timeout: 60, &:present?).click
  $browser.span(class: 'icon icon-chevron-right right-icon s').click
end

Then(/^I click on "([^"]*)" link in Add\-ons and accessories page$/) do |arg|
  $browser.button(text: "Proceed to Cart").double_click
end

Then(/^I click on "([^"]*)" option in Your cart page$/) do |arg|
  #$browser.a(text:'Continue Shopping').wait_until(timeout: 60, &:present?).click
   $browser.a(text:'Continue Shopping').double_click
end
