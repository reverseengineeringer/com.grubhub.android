package com.google.android.gms.tagmanager;

import java.util.Arrays;

class ew
{
  final String a;
  final byte[] b;
  
  ew(String paramString, byte[] paramArrayOfByte)
  {
    a = paramString;
    b = paramArrayOfByte;
  }
  
  public String toString()
  {
    return "KeyAndSerialized: key = " + a + " serialized hash = " + Arrays.hashCode(b);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ew
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */