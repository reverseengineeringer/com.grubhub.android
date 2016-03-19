package com.grubhub.AppBaseLibrary.android.utils.h;

import android.telephony.PhoneNumberUtils;
import com.grubhub.AppBaseLibrary.android.utils.f;

public class a
{
  public static String a(String paramString)
  {
    if (paramString != null)
    {
      paramString = PhoneNumberUtils.stripSeparators(paramString);
      if ((paramString != null) && (paramString.length() >= 10))
      {
        paramString = paramString.replaceFirst("^[01 +*#]*\\W{0,2}([2-9][0-8][0-9])\\W{0,2}([2-9][0-9]{2})\\W{0,2}([0-9]{4})(.*)?", "($1) $2-$3");
        if (b(paramString)) {
          return paramString;
        }
      }
    }
    return null;
    return paramString;
  }
  
  public static boolean b(String paramString)
  {
    if ((f.b(paramString)) && (paramString.length() >= 10)) {
      return paramString.matches("1?\\W{0,2}([2-9][0-8][0-9])\\W{0,2}([2-9][0-9]{2})\\W{0,2}([0-9]{4})");
    }
    return false;
  }
  
  public static boolean c(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramString != null)
    {
      bool1 = bool2;
      if (PhoneNumberUtils.stripSeparators(paramString).length() >= 10) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static String d(String paramString)
  {
    if (paramString != null) {
      return paramString.replaceAll(".*(\\d{3}).*(\\d{3}).*(\\d{4})$", "($1) $2-$3");
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.h.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */