public class Test {

    public final seq__Task__c acct;
    
    // The extension constructor initializes the private member
    // variable acct by using the getRecord method from the standard
    // controller.
    public Test(ApexPages.StandardController stdController) {
        this.acct = (seq__Task__c)stdController.getRecord();
    }

   
}