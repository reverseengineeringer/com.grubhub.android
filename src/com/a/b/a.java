package com.a.b;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class a
{
  public static String a(String paramString)
  {
    try
    {
      paramString = MessageDigest.getInstance("SHA256").digest(paramString.getBytes("UTF-8"));
      StringBuffer localStringBuffer = new StringBuffer();
      int i = 0;
      while (i < paramString.length)
      {
        localStringBuffer.append(Integer.toHexString(paramString[i] & 0xFF | 0x100).substring(1, 3));
        i += 1;
      }
      paramString = localStringBuffer.toString();
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      return null;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.a.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */