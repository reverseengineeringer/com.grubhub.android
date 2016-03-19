package com.braintreepayments.cardform.a;

public class b
{
  public static boolean a(String paramString)
  {
    paramString = new StringBuffer(paramString).reverse().toString();
    int m = paramString.length();
    int i = 0;
    int k = 0;
    int j = 0;
    if (i < m)
    {
      char c = paramString.charAt(i);
      if (!Character.isDigit(c)) {
        throw new IllegalArgumentException(String.format("Not a digit: '%s'", new Object[] { Character.valueOf(c) }));
      }
      int n = Character.digit(c, 10);
      if (i % 2 == 0) {
        j += n;
      }
      for (;;)
      {
        i += 1;
        break;
        k += n * 2 % 10 + n / 5;
      }
    }
    return (k + j) % 10 == 0;
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.cardform.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */