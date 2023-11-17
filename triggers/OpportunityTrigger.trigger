trigger OpportunityTrigger on Opportunity (before insert, before update) {
     
            MetadataNewClass.applyDiscounts1(Trigger.new);
        
    
}