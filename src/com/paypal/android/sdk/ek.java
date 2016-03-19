package com.paypal.android.sdk;

import java.util.Set;

public final class ek
{
  public static boolean a;
  private static final fy b = new fy(em.class, gn.a);
  private static Set c = new el();
  
  public static String a(em paramem)
  {
    return b.a(paramem);
  }
  
  public static String a(String paramString)
  {
    if (paramString.equals(am.b.toString())) {
      return b.a(em.aK);
    }
    if (paramString.equals(am.a.toString())) {
      return b.a("INTERNAL_SERVICE_ERROR", em.aQ);
    }
    if (paramString.equals(am.c.toString())) {
      return b.a(em.bu);
    }
    return b.a(paramString, em.aQ);
  }
  
  public static void b(String paramString)
  {
    b.a(paramString);
    if ((ft.c(paramString)) && (c.contains(paramString))) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public static String c(String paramString)
  {
    String str2 = b.a();
    String str1 = str2;
    if (!str2.contains("_")) {
      str1 = str2 + "_" + paramString;
    }
    return str1;
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.ek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */