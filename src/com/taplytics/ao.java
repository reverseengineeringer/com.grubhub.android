package com.taplytics;

public class ao
{
  public static <T extends CharSequence> T a(T paramT, String paramString)
  {
    if (paramT == null) {
      throw new IllegalArgumentException(paramString + " may not be null");
    }
    if (ap.a(paramT)) {
      throw new IllegalArgumentException(paramString + " may not be blank");
    }
    return paramT;
  }
  
  public static <T> T a(T paramT, String paramString)
  {
    if (paramT == null) {
      throw new IllegalArgumentException(paramString + " may not be null");
    }
    return paramT;
  }
  
  public static void a(boolean paramBoolean, String paramString)
  {
    if (!paramBoolean) {
      throw new IllegalArgumentException(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */