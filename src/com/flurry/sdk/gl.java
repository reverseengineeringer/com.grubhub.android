package com.flurry.sdk;

public class gl
  extends ig
{
  private static final String a = gl.class.getSimpleName();
  
  private String b(String paramString1, String paramString2)
  {
    String str;
    if (a("timestamp_epoch_millis", paramString2))
    {
      str = String.valueOf(System.currentTimeMillis());
      ib.a(3, a, "Replacing param timestamp_epoch_millis with: " + str);
      return paramString1.replace(paramString2, jn.c(str));
    }
    if (a("session_duration_millis", paramString2))
    {
      str = Long.toString(ha.a().f());
      ib.a(3, a, "Replacing param session_duration_millis with: " + str);
      return paramString1.replace(paramString2, jn.c(str));
    }
    if (a("fg_timespent_millis", paramString2))
    {
      str = Long.toString(ha.a().f());
      ib.a(3, a, "Replacing param fg_timespent_millis with: " + str);
      return paramString1.replace(paramString2, jn.c(str));
    }
    ib.a(3, a, "Unknown param: " + paramString2);
    return paramString1.replace(paramString2, "");
  }
  
  public String a(String paramString)
  {
    String str2 = b(paramString);
    String str1 = paramString;
    for (paramString = str2; paramString != null; paramString = b(str1)) {
      str1 = b(str1, paramString);
    }
    return str1;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */