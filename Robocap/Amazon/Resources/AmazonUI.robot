*** Settings ***
Resource    PO/LandingPage.robot
Resource    PO/TopNav.robot
Resource    PO/SearchResult.robot
Resource    PO/Product.robot
Resource    PO/Cart.robot
Resource    PO/SignIn.robot


*** Keywords ***
Search for products
    LandingPage.Load
    LandingPage.Verify page is loaded
    TopNav.Search for product
    SearchResult.Verify seach completed
    
Select product from search result
    SearchResult.Click product link  
    Product.Verify product page
    
Add product to cart
    Product.Add to cart  
    Cart.Verify product added to cart
    
Begin checkout
    Cart.Proceed to checkout
    SignIn.Verify sign-in page loaded
    
Login to Amazon
    [Arguments]    ${Email}    ${Password}
    SignIn.Login with valid credentials    ${Email}    ${Password}
    
     