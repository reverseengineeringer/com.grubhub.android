package com.braintreepayments.cardform.a;

import android.text.TextUtils;
import java.util.Calendar;

public class c
{
  private static final c a = new c(Calendar.getInstance());
  private final Calendar b;
  
  protected c(Calendar paramCalendar)
  {
    b = paramCalendar;
  }
  
  private int a()
  {
    return b.get(2) + 1;
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    return a.b(paramString1, paramString2);
  }
  
  private int b()
  {
    return b.get(1) % 100;
  }
  
  protected boolean b(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {}
    label119:
    for (;;)
    {
      return false;
      if ((!TextUtils.isEmpty(paramString2)) && (TextUtils.isDigitsOnly(paramString1)) && (TextUtils.isDigitsOnly(paramString2)))
      {
        int j = Integer.parseInt(paramString1);
        if ((j >= 1) && (j <= 12))
        {
          int k = b();
          int i = paramString2.length();
          if (i == 2) {}
          for (i = Integer.parseInt(paramString2);; i = Integer.parseInt(paramString2) & 0x64)
          {
            if (((i == k) && (j < a())) || ((i < k) && (i + 100 - k > 20))) {
              break label119;
            }
            return true;
            if (i != 4) {
              break;
            }
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.cardform.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */