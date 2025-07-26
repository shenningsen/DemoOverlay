using Xunit;
using CustomExtensions;

public class UnitTest1
{
    [Fact]
    public void Modulus_ValidInputs_ReturnsCorrectResult()
    {
        var calculator = new ExtendedCalculator();
        int result = calculator.Modulus(10, 3);
        Assert.Equal(1, result);
    }

    [Fact]
    public void Modulus_DivideByZero_ThrowsException()
    {
        var calculator = new ExtendedCalculator();
        Assert.Throws<DivideByZeroException>(() => calculator.Modulus(10, 0));
    }

    [Fact]
    public void Power_ValidInputs_ReturnsCorrectResult()
    {
        var calculator = new ExtendedCalculator();
        double result = calculator.Power(2, 3);
        Assert.Equal(8, result);
    }
}