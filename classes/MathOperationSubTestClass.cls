@isTest
public class MathOperationSubTestClass {
@isTest
 static void testSubNumbers() {
        // Create an instance of the MathOperations class
        MathOperationSubClass mathOps = new MathOperationSubClass();

        // Test case 1: Valid input
        Integer result1 = mathOps.SubNumbers(4, 3);
        System.assertEquals(1, result1, 'Expected result: 1');

        // Test case 2: Null input
        Integer result2 = mathOps.SubNumbers(null, 4);
        System.assertEquals(null, result2, 'Expected result: null');
     
     // Example of using System.runAs() for testing different user context
         System.runAs(new User(Id = UserInfo.getUserId())) {
            // Your test logic with different user context
            // For example, create or update records that require specific user permissions
            Account test1Account = new Account(Name = 'Test1 Account');
            insert test1Account;

            
        }  
    }
}