@istest
public class custommetadata_testclass {
   


     @isTest
    static void testApplyDiscount() {
        // Create test data
       /*String category='eletronics';
        String segment='mobile';
            Discount_Rule__mdt rules = [SELECT Rule_Name__c, Discount_Percentage__c,product_Segment__c,
                                    Category__c, Product_Validity__c
                                    FROM Discount_Rule__mdt 
                                    WHERE product_Segment__c =:segment
                                    AND Category__c =:category
                                    LIMIT 1];
        decimal n=custommetadata_newclass.applyDiscount(rules.product_Segment__c,rules.Category__c);
        System.assertEquals(n,40.0);*/
       
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

        // Test applying discount
        Test.startTest();
        custommetadata_newclass.applyDiscount(opp.Customer_Segment__c, opp.category__c);
        Test.stopTest();

        // Add assertions as needed
    }
}