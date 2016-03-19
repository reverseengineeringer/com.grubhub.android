package com.grubhub.AppBaseLibrary.android.utils;

public class f
{
  public static boolean a(String paramString)
  {
    return (paramString == null) || (paramString.isEmpty()) || (paramString.matches("^\\s+$"));
  }
  
  public static boolean b(String paramString)
  {
    return !a(paramString);
  }
  
  public static boolean c(String paramString)
  {
    int j;
    int i;
    if (paramString != null)
    {
      paramString = paramString.toCharArray();
      j = paramString.length;
      i = 0;
    }
    for (boolean bool = false; i < j; bool = true)
    {
      if (!Character.isDigit(paramString[i])) {
        return false;
      }
      i += 1;
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */