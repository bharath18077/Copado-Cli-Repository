@istest
public class CustomMetadataTestClass {
   


     @isTest
    static void testApplyDiscount() {
     Opportunity opp = new Opportunity(
            Name = 'Test Opportunity',
            Customer_Segment__c = Label.Product_segment,
            category__c = 'TestCategory',
            CloseDate = Date.today(),
            StageName = 'Closed Won'
        );
        insert opp;
     
        System.runAs(new user(Id = UserInfo.getUserId())) {

       // CustomMetadataNewClass.applyDiscount(opp.Category__c, opp.Customer_Segment__c);

        // Test applying discount
         // Test applying discount
        Test.startTest();

            // Call the method to apply discount
            Decimal expectedDiscount = 0; // Set the expected discount value
            List<Opportunity> newOpportunityList = [SELECT Id, discount_percentage__c FROM Opportunity WHERE Id = :opp.Id];
            //Decimal discountPercentage = CustomMetadataNewClass.applyDiscount(opp.Customer_Segment__c, opp.Category__c);


// Perform assertion
	System.assertEquals(expectedDiscount, newOpportunityList[0].discount_percentage__c, 'The applied discount should be ' + expectedDiscount );
            Test.stopTest();
        
     
    }
}
}