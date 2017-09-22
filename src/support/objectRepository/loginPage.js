
/**
 * Perform an click action on the given element
 * @param  {String}   action  The action to perform (click or doubleClick)
 * @param  {String}   type    Type of the element (link or selector)
 * @param  {String}   element Element selector
 */
module.exports = () => {

   global.Bank_url="http://www.demo.guru99.com/v4/" 
   global.userNameTextbox = "input[name='uid']";
   global.passwordTextbox = "input[name='password']";
   global.loginButton = "input[name='btnLogin']";
   global.balanceEnquiryLink = "a[href='BalEnqInput.php']";
   global.AccountNumberTextBox = "input[name='accountno']";
   global.submitButton = "input[name='AccSubmit']";
   global.BalanceText = ".//*[@id='balenquiry']/tbody/tr[16]/td[2]";
   global.ExpectedBalance = "10000";

   global.amountTextbox = ".//input[@name='ammount']";
   global.descriptionTextbox = "input[name='desc']";

   global.depositLink = "a[href='BalEnqInput.php']";
   global.withdrawalLink = "a[href='BalEnqInput.php']";

};

