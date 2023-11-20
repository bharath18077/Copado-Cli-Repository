@isTest
public class MathOperationAddTestClass {
@isTest
 static void testAddNumbers() {
        // Create an instance of the MathOperations class
        MathOperationAddClass mathOps = new MathOperationAddClass();

        // Test case 1: Valid input
        Integer result1 = mathOps.addNumbers(3, 4);
        System.assertEquals(7, result1, 'Expected result: 7');

        // Test case 2: Null input
        Integer result2 = mathOps.addNumbers(null, 4);
        System.assertEquals(null, result2, 'Expected result: null');
       // Example of using System.runAs() for testing different user context
        System.runAs(new User(Id = UserInfo.getUserId())) {
            // Your test logic with different user context, if applicable
            // This is just a placeholder, modify as per your specific requirements
        }   
 }
}