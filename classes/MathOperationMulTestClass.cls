@isTest
public class MathOperationMulTestClass {
@isTest
 static void testMulNumbers() {
        // Create an instance of the MathOperations class
        MathOperationMulClass mathOps = new MathOperationMulClass();

        // Test case 1: Valid input
        Integer result1 = mathOps.MulNumbers(3, 4);
        System.assertEquals(12, result1, 'Expected result: 12');

        // Test case 2: Null input
        Integer result2 = mathOps.MulNumbers(null, 4);
        System.assertEquals(null, result2, 'Expected result: null');
     
     // Example of using System.runAs() for testing different user context
         System.runAs(new User(Id = UserInfo.getUserId())) {
            // Your test logic with different user context
            // For example, create or update records that require specific user permissions
            Account testAccount2 = new Account(Name = 'Test2 Account');
            insert testAccount2;

            
        }  
    }
}