/**
 * Apex class for performing addition operations.
 * @description This class provides a method to add two integers.
 */

public class MathOperationAddClass 
{
    /**
     * Adds two integers.
     * @param num1 The first integer.
     * @param num2 The second integer.
     * @return The sum of the two integers. Returns null if either input is null.
     * @description This method provides the addition operation for two integers.

     */
     public Integer addNumbers(Integer num1, Integer num2) {
        if (num1 != null && num2 != null) {
            return num1 + num2;
        }
        return null;
    }
}