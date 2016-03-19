package com.flurry.sdk;

import java.util.UUID;

public class io
{
  private static final String b = io.class.getSimpleName();
  String a = null;
  private byte[] c = null;
  
  private io() {}
  
  public io(byte[] paramArrayOfByte)
  {
    a = UUID.randomUUID().toString();
    c = paramArrayOfByte;
  }
  
  public static String a(String paramString)
  {
    return ".yflurrydatasenderblock." + paramString;
  }
  
  public String a()
  {
    return a;
  }
  
  public byte[] b()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.io
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */