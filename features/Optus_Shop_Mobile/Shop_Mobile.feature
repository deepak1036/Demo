Feature: user should be able to submit postpaid order

  @postpaid
  Scenario: Postpaid order provisioning End to End
    And I am on Optus Home page
    Then  I click on "Postpaid" link in Menu tab
    Then  I Click on "View Plan" link
    Then  I Click on "Select plan link"  in choose plan page
    Then  I click on click on "Continue SIM only plan" link in choose plan page
    Then  I click on "I'm new to Optus" link in configure Service page
    Then  I click on Proceed to " checkout as a new customer link " link in configure Service page
    Then  I click on "Proceed to Cart" link in Add-ons and accessories page
    Then  I click on "Continue Shopping" option in Your cart page