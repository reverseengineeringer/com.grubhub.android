package com.paypal.android.sdk;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Arrays;
import java.util.Currency;
import java.util.List;
import java.util.Locale;

public final class dc
{
  private static List a = Arrays.asList(new String[] { "AUD", "BRL", "CAD", "CHF", "CZK", "DKK", "EUR", "GBP", "HKD", "HUF", "ILS", "JPY", "MXN", "MYR", "NOK", "NZD", "PHP", "PLN", "RUB", "SEK", "SGD", "THB", "TWD", "TRY", "USD" });
  private static String b = "JPY, HUF, TWD";
  private static final Locale c = Locale.US;
  private static final Locale d = Locale.GERMANY;
  private static List e = null;
  private static NumberFormat f = null;
  
  public static String a(double paramDouble, Currency paramCurrency)
  {
    Object localObject = new DecimalFormat("0.00");
    ((DecimalFormat)localObject).setCurrency(paramCurrency);
    label58:
    String str;
    if (((DecimalFormat)localObject).format(1.56D).indexOf(".") > 0)
    {
      localObject = ".";
      if (!((String)localObject).equals(",")) {
        break label114;
      }
      localObject = (DecimalFormat)NumberFormat.getInstance(d);
      str = "#######0";
      if (b.indexOf(paramCurrency.getCurrencyCode().toUpperCase(Locale.US)) != -1) {
        break label128;
      }
    }
    label114:
    label128:
    for (int i = 1;; i = 0)
    {
      paramCurrency = str;
      if (i != 0) {
        paramCurrency = "#####0.00";
      }
      ((DecimalFormat)localObject).applyPattern(paramCurrency);
      return ((DecimalFormat)localObject).format(paramDouble);
      localObject = ",";
      break;
      localObject = (DecimalFormat)NumberFormat.getInstance(c);
      break label58;
    }
  }
  
  public static String a(Locale paramLocale, double paramDouble, Currency paramCurrency)
  {
    return a(paramLocale, paramDouble, paramCurrency, true);
  }
  
  private static String a(Locale paramLocale, double paramDouble, Currency paramCurrency, boolean paramBoolean)
  {
    int j = 1;
    if (f == null) {
      f = NumberFormat.getCurrencyInstance(paramLocale);
    }
    f.setCurrency(paramCurrency);
    int i;
    label52:
    String str1;
    String str2;
    if (f.format(1234.56D).indexOf("1") != 0)
    {
      i = 0;
      if (i != 0) {
        break label207;
      }
      i = j;
      str1 = paramCurrency.getSymbol();
      str2 = paramCurrency.getCurrencyCode();
    }
    for (;;)
    {
      try
      {
        StringBuilder localStringBuilder = new StringBuilder();
        if (i != 0) {
          break label213;
        }
        paramLocale = str2 + " ";
        localStringBuilder = localStringBuilder.append(paramLocale);
        if (i == 0) {
          break label219;
        }
        paramLocale = str1;
        paramCurrency = localStringBuilder.append(paramLocale).append(a(paramDouble, paramCurrency));
        if (i != 0) {
          break label225;
        }
        paramLocale = " " + str1;
        paramCurrency = paramCurrency.append(paramLocale);
        if (i != 0)
        {
          paramLocale = " " + str2;
          return paramLocale;
        }
        paramLocale = "";
        continue;
        i = 1;
      }
      catch (NumberFormatException paramLocale)
      {
        return "";
      }
      break;
      label207:
      i = 0;
      break label52;
      label213:
      paramLocale = "";
      continue;
      label219:
      paramLocale = "";
      continue;
      label225:
      paramLocale = "";
    }
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.dc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */