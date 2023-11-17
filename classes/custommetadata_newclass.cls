public class custommetadata_newclass 
{
    public static Decimal applyDiscount(String customerSegment, String productCategory) {
        Decimal discountPercentage = 0 ;

        // Query Custom Metadata for applicable rules
        List<Discount_Rule__mdt> rules = [SELECT Rule_Name__c, Discount_Percentage__c,Product_Segment__c
                                          ,Product_Category__c,Product_Validity__c
                                           FROM Discount_Rule__mdt 
                                          where Product_Segment__c =:customerSegment and
                                          category__C =: productcategory limit 1];
        system.debug(rules);
        DiscountRule__c Detail = DiscountRule__c.getValues('new person');   // not used
        DiscountRule__c Detail1 = DiscountRule__c.getValues('new person 1'); // not used
                                           

        // Apply discount based on rules
        for (Discount_Rule__mdt rule : rules) {
            discountPercentage += rule.Discount_Percentage__c;
        }
		 system.debug(discountpercentage);
        return discountPercentage;
       
    }
}