/**
 * Apex class for applying discounts based on custom metadata rules.
 * @description This class provides a method to apply discounts based on custom metadata rules
 * for a given customer segment and product category.
 */
public class MetadataNewClass 
{
    /**
 * @description This class provides a method to apply discounts based on custom metadata rules
 * @param customerSegment The customer segment for which to apply the discount.
 */
   
    public static void applyDiscounts1(List<Opportunity> opportunities) {
        Set<String> customerSegments = new Set<String>();
        Set<String> productCategories = new Set<String>();

        // Collect unique customer segments and product categories from opportunities
        for (Opportunity opp : opportunities) {
            customerSegments.add(opp.Customer_Segment__c);
            productCategories.add(opp.category__c);
        }

        // Iterate through opportunities and apply discounts
        for (Opportunity opp : opportunities) {
            Decimal discount = CustomMetadataNewClass.applyDiscount(opp.Customer_Segment__c, opp.Category__c);
            opp.Discount_percentage__c = discount;  // Assuming there's a Discount_percentage__c field on Opportunity to store the discount
        }
    }
}