using CoreLogic;

namespace CustomExtensions;

public class ExtendedCalculator : Calculator
{
    public int Modulus(int a, int b)
    {
        if (b == 0)
        {
            throw new DivideByZeroException("Division by zero is not allowed.");
        }
        return a % b;
    }

    public double Power(int baseValue, int exponent)
    {
        return Math.Pow(baseValue, exponent);
    }
}
