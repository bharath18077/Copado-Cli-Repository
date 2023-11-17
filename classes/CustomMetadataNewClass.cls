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
        

// Check CRUD permissions before querying Discount_Rule__mdt
        if (Schema.sObjectType.Discount_Rule__mdt.isAccessible() && Schema.sObjectType.Discount_Rule__mdt.isQueryable()) {
            // Query Custom Metadata for applicable rules
            List<Discount_Rule__mdt> rules = [SELECT Rule_Name__c, Discount_Percentage__c, Product_Segment__c, Product_Category__c, Product_Validity__c
                                              FROM Discount_Rule__mdt 
                                              WHERE Product_Segment__c = :customerSegment AND category__C = :productCategory LIMIT 1];
            // Process rules...
            if (!rules.isEmpty()) {
                for (Discount_Rule__mdt rule : rules) {
                    discountPercentage += rule.Discount_Percentage__c;
                }
            }
        } 
        return discountPercentage;
       
    }
}