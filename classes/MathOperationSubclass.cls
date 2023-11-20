/**
 * Apex class for performing subtraction operations.
 * @description This class provides a method to subtract two integers.
 */
public class MathOperationSubclass 
{
    /**
     * Subtracts two integers.
     * @param num1 The first integer.
     * @param num2 The second integer.
     * @return difference between two integers. Returns null if either input is null.
     * @description This method provides the subtraction operation for two integers.

     */
    public Integer subNumbers(Integer num1, Integer num2) {
        if (num1 != null && num2 != null) {
            return num1 - num2;
        }
        return null;
    }

}