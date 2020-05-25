Feature: Mobile Phone purchase
  @Mobile
  Scenario: Mobile phone purchase end to end flow
    Given I launch the demo cart application and home page
    Then  I click on phone and PD's menu option
    Then  I select Iphone mobile and Click on iphone link
    Then  I Verify that details and click on add to cart option
    Then  I verify that message "Success: You have added iPhone to your shopping cart!" displayed
    Then  I click on Shopping Cart option
    Then  I verify product details an click on Continue shopping  link