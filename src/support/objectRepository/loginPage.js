
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
   global.amountTextbox = "input[name='ammount']";

   global.submitButton = "input[name='AccSubmit']";
   global.BalanceText = ".//*[@id='balenquiry']/tbody/tr[16]/td[2]";
   global.ExpectedBalance = "10000";

   global.descriptionTextbox = "input[name='desc']";

   global.depositLink = "a[href='DepositInput.php']";
   global.withdrawalLink = "a[href='WithdrawalInput.php']";
   global.newAccountLink = "a[href='addAccount.php']";
   global.editAccountLink = "a[href='editAccount.php']";
   global.deleteAccountLink = "a[href='deleteAccountInput.php']";
   //global.ditAccountLink = "a[href='editAccount.php']";

   global.customerIdTextbox = "input[name='cusid']";
   global.addNewAccount_AccountTypeDropdown = "select[name='selaccount']";
   global.initialDepositTextbox = "input[name='inideposit']";
   global.addNewAccount_SubmitButton = "input[value='submit']";
   global.accountIDText = ".//*[@id='account']/tbody/tr[4]/td[2]";

   global.editAccount_AccountTypeDropdown = "select[name='a_type']";


};

