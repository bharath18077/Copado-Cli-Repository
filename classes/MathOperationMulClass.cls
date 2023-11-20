/**
 * Apex class for performing multiplication operations.
 * @description This class provides a method to multiply two integers.
 */
public class MathOperationMulClass {
        /**
     * Multiply two integers.
     * @param num1 The first integer.
     * @param num2 The second integer.
     * @return The product of the two integers. Returns null if either input is null.
     * @description This method provides the multiplication operation for two integers.

     */
    public Integer MulNumbers(Integer num1, Integer num2) {
        
        if (num1 != null && num2 != null) {
            return num1 * num2;
        }
        return null;
    }

}