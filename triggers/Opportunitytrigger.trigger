trigger Opportunitytrigger on Opportunity (before insert, before update) 
{
   

    public static void applyDiscounts(List<Opportunity> opportunities) {
        Set<String> customerSegments = new Set<String>();
        Set<String> productCategories = new Set<String>();

        // Collect unique customer segments and product categories from opportunities
        for (Opportunity opp : opportunities) {
            customerSegments.add(opp.Customer_Segment__c);
            productCategories.add(opp.category__c);
        }

        // Iterate through opportunities and apply discounts
        for (Opportunity opp : opportunities) {
            Decimal discount = custommetadata_newclass.applyDiscount(opp.customer_segment__c,opp.category__c);
            opp.Discount_percentage__c = discount;  // Assuming there's a Discount__c field on Opportunity to store the discount
        }
    }

    if (Trigger.isBefore) {
        if (Trigger.isInsert || Trigger.isUpdate) {
            applyDiscounts(Trigger.new);
        }
    
}

    

}