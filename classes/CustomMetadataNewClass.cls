/**
 * Apex class for applying discounts based on custom metadata rules.
 * @description This class provides a method to apply discounts based on custom metadata rules
 * for a given customer segment and product category.
 */
public without sharing class CustomMetadataNewClass 
{
      /**
     * Applies discounts based on custom metadata rules.
     * @description This class provides a method to apply discounts based on custom metadata rules
     * for a given customer segment and product category.
     * 
     * @param customerSegment The customer segment for which to apply the discount.
     * @param productCategory The product category for which to apply the discount.
     * @return The total discount percentage applied.
     */
    public static Decimal applyDiscount(String customerSegment, String productCategory) {
        
        Decimal discountPercentage = 0 ;

        // Query Custom Metadata for applicable rules
        List<Discount_Rule__mdt> rules = [SELECT Rule_Name__c, Discount_Percentage__c,Product_Segment__c
                                          ,Product_Category__c,Product_Validity__c
                                           FROM Discount_Rule__mdt 
                                          where Product_Segment__c =:customerSegment and
                                          category__C =: productcategory limit 1];
        //system.debug(rules);
       // DiscountRule__c Detail = DiscountRule__c.getValues('new person');  
       
         
                                           

// Check if rules were found before processing
        if (!rules.isEmpty()) {
            for (Discount_Rule__mdt rule : rules) {
                discountPercentage += rule.Discount_Percentage__c;
            }
           // System.debug(LoggingLevel.INFO, 'Discount Percentage: ' + discountPercentage);
        } else {
            //System.debug(LoggingLevel.INFO, 'Detail: ' + Detail.Discount_percentage__c);
        }
		 //system.debug(discountpercentage);
        return discountPercentage;
       
    }
}