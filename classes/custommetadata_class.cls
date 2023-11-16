public class custommetadata_class 
{
    public static decimal custommetadata_method(String customerSegment, String productCategory)
    
       

     {
        Decimal discountPercentage = 0;

        // Query Custom Metadata for applicable rules
        List<Discount_Rule__mdt> rules = [SELECT Rule_Name__c, Discount_Percentage__c
                                           FROM Discount_Rule__mdt
                                           WHERE Product_Segment__c = :customerSegment
                                           AND Product_Category__c = :productCategory
                                           AND Product_Validity__c >= TODAY];

        // Apply discount based on rules
        for (Discount_Rule__mdt rule : rules) {
            discountPercentage += rule.Discount_Percentage__c;
        }

        return discountPercentage;
    }
}