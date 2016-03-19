package com.paypal.android.sdk.payments;

import com.paypal.android.sdk.ed;
import com.paypal.android.sdk.eh;
import com.paypal.android.sdk.ej;
import com.paypal.android.sdk.ft;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

abstract class cc
  implements cf
{
  private ar a;
  
  protected cc(ar paramar)
  {
    a = paramar;
  }
  
  private String a(ej paramej, boolean paramBoolean)
  {
    String str = eh.b + ":" + b() + ":" + paramej.a();
    paramej = str;
    if (paramBoolean) {
      paramej = str + "|error";
    }
    return paramej;
  }
  
  protected final ar a()
  {
    return a;
  }
  
  public final void a(ej paramej, boolean paramBoolean, String paramString1, String paramString2, String paramString3)
  {
    ed.a();
    String str2 = Locale.getDefault().toString();
    HashMap localHashMap = new HashMap();
    boolean bool;
    String str1;
    if (!ft.a(paramString1))
    {
      bool = true;
      localHashMap.put("gn", a(paramej, bool));
      localHashMap.put("v31", a(paramej, bool));
      str1 = a(paramej, bool) + ":" + paramej.a(a.d(), paramBoolean);
      if (!bool) {
        break label254;
      }
      str1 = str1 + "|error";
    }
    label254:
    for (;;)
    {
      localHashMap.put("c25", str1);
      localHashMap.put("v25", "D=c25");
      localHashMap.put("c37", eh.a + "::");
      localHashMap.put("c50", str2);
      localHashMap.put("c35", "out");
      a(localHashMap, paramej, paramString2, paramString3);
      if (paramString1 != null) {
        localHashMap.put("c29", paramString1);
      }
      a("2.9.10", localHashMap);
      return;
      bool = false;
      break;
    }
  }
  
  abstract void a(String paramString, Map paramMap);
  
  protected void a(Map paramMap, ej paramej, String paramString1, String paramString2) {}
  
  protected abstract String b();
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */