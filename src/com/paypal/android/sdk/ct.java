package com.paypal.android.sdk;

public enum ct
{
  public static ct a(String paramString)
  {
    Object localObject;
    if (paramString == null)
    {
      localObject = a;
      return (ct)localObject;
    }
    ct[] arrayOfct = values();
    int m = arrayOfct.length;
    int k = 0;
    for (;;)
    {
      if (k >= m) {
        break label70;
      }
      ct localct = arrayOfct[k];
      if ((localct != a) && (localct != i))
      {
        localObject = localct;
        if (paramString.equalsIgnoreCase(localct.toString())) {
          break;
        }
      }
      k += 1;
    }
    label70:
    return a;
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */