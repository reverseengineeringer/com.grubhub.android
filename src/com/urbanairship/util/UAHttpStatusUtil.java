package com.urbanairship.util;

public class UAHttpStatusUtil
{
  public static boolean inClientErrorRange(int paramInt)
  {
    return paramInt / 100 == 4;
  }
  
  public static boolean inRedirectionRange(int paramInt)
  {
    return paramInt / 100 == 3;
  }
  
  public static boolean inServerErrorRange(int paramInt)
  {
    return paramInt / 100 == 5;
  }
  
  public static boolean inSuccessRange(int paramInt)
  {
    return paramInt / 100 == 2;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.util.UAHttpStatusUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */