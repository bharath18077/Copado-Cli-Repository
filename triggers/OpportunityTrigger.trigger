trigger OpportunityTrigger on Opportunity (before insert, before update) {
    if (Trigger.isBefore) {
        if (Trigger.isInsert || Trigger.isUpdate) {
            MetadataNewClass.applyDiscounts1(Trigger.new);
        }
    }
}