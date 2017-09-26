
/**
 * Perform an click action on the given element
 * @param  {String}   action  The action to perform (click or doubleClick)
 * @param  {String}   type    Type of the element (link or selector)
 * @param  {String}   element Element selector
 */
module.exports = () => {

   global.Bank_url="http://www.demo.guru99.com/v4/" 
   global.ExpectedBank_url="http://www.demo.guru99.com/v4/" 
   global.userNameTextbox = "input[name='uid']";
   global.passwordTextbox = "input[name='password']";
   global.loginButton = "input[name='btnLogin']";
   global.balanceEnquiryLink = "a[href='BalEnqInput.php']";
   global.AccountNumberTextBox = "input[name='accountno']";
   global.amountTextbox = "input[name='ammount']";

   global.loginPageTitle = " Guru99 Bank Home Page";
   global.homePageTitle = " Guru99 Bank Manager HomePage";
   global.errorMessage = "#spanMessage";
   

   global.submitButton = "input[name='AccSubmit']";
   global.BalanceText = ".//*[@id='balenquiry']/tbody/tr[16]/td[2]";
   global.ExpectedBalance = "10000";

   global.descriptionTextbox = "input[name='desc']";

   global.depositLink = "a[href='DepositInput.php']";
   global.withdrawalLink = "a[href='WithdrawalInput.php']";
   global.newAccountLink = "a[href='addAccount.php']";
   global.editAccountLink = "a[href='editAccount.php']";
   global.deleteAccountLink = "a[href='deleteAccountInput.php']";
   global.fundTransferLink = "a[href='FundTransInput.php']";
   global.miniStatementLink = "a[href='MiniStatementInput.php']";
   //global.ditAccountLink = "a[href='editAccount.php']";

   global.customerIdTextbox = "input[name='cusid']";
   global.addNewAccount_AccountTypeDropdown = "//select[@name='selaccount']";
  
   global.addNewAccount_AccountTypeSavings = "//select[@name='selaccount']/option[1]";
   global.addNewAccount_AccountTypeCurrent = "//select[@name='selaccount']/option[2]";
   global.inputForAccountTypeDropdown = "Current";

   global.initialDepositTextbox = "input[name='inideposit']";
   global.addNewAccount_SubmitButton = "input[value='submit']";
   global.accountIDText = ".//*[@id='account']/tbody/tr[4]/td[2]";

   global.editAccount_AccountTypeCurrent = "//select[@name='a_type']/option[1]";
   global.editAccount_AccountTypeSavings = "//select[@name='a_type']/option[2]";

   global.payersAccountTextbox = "input[name='payersaccount']";
   global.payeeAccountTextbox = "input[name='payeeaccount']";


   global.MiniStateTransactionTypeForWithdrawal = ".//*[@id='ministmt']/tbody/tr[3]/td[3]";
   global.MiniStateTransactionTypeForDeposit = ".//*[@id='ministmt']/tbody/tr[2]/td[3]";
   global.MiniStateAmountForWithdrawal = ".//*[@id='ministmt']/tbody/tr[3]/td[2]";
   global.MiniStateAmountForDeposit = ".//*[@id='ministmt']/tbody/tr[2]/td[2]";

   global.Var_MiniStateTransactionTypeForWithdrawal = "w";
   global.var_MiniStateTransactionTypeForDeposit = "d";
   global.Var_MiniStateAmountForWithdrawal = "5000";
   global.var_MiniStateAmountForDeposit = "5000";


    

};

