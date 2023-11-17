@istest
public class custommetadatatestclass {
   


     @isTest
    static void testApplyDiscount() {
       
       
        Discount_Rule__mdt rule = new Discount_Rule__mdt(  
            Rule_Name__c = Label.text1,
            Discount_Percentage__c =10,
            Product_Segment__c = Label.Product_segment,
            category__c = 'TestCategory',
            Product_Validity__c = System.today()
        ); 
        
        

        Opportunity opp = new Opportunity(
            Name = 'Test Opportunity',
            Customer_Segment__c = 'TestSegment',
            category__c = 'TestCategory',
            CloseDate = Date.today(),
            StageName = 'Closed Won'
        );
        insert opp;
     
        System.runAs(new user(Id = UserInfo.getUserId())) {

        custommetadatanewclass.applyDiscount(opp.Category__c, opp.Customer_Segment__c);

        // Test applying discount
         // Test applying discount
        Test.startTest();
        Decimal discountPercentage = CustomMetadataNewClass.applyDiscount(opp.Customer_Segment__c, opp.Category__c);
        Test.stopTest();

        // Add assertions
     
    }
}
}