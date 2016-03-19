package com.google.android.gms.d;

import java.io.IOException;

public abstract class ek
{
  protected volatile int s = -1;
  
  public static final <T extends ek> T a(T paramT, byte[] paramArrayOfByte)
    throws ej
  {
    return b(paramT, paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static final void a(ek paramek, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramArrayOfByte = ec.a(paramArrayOfByte, paramInt1, paramInt2);
      paramek.a(paramArrayOfByte);
      paramArrayOfByte.b();
      return;
    }
    catch (IOException paramek)
    {
      throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", paramek);
    }
  }
  
  public static final byte[] a(ek paramek)
  {
    byte[] arrayOfByte = new byte[paramek.h()];
    a(paramek, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }
  
  public static final <T extends ek> T b(T paramT, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws ej
  {
    try
    {
      paramArrayOfByte = eb.a(paramArrayOfByte, paramInt1, paramInt2);
      paramT.b(paramArrayOfByte);
      paramArrayOfByte.a(0);
      return paramT;
    }
    catch (ej paramT)
    {
      throw paramT;
    }
    catch (IOException paramT)
    {
      throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
    }
  }
  
  public void a(ec paramec)
    throws IOException
  {}
  
  protected int b()
  {
    return 0;
  }
  
  public abstract ek b(eb parameb)
    throws IOException;
  
  public ek f()
    throws CloneNotSupportedException
  {
    return (ek)super.clone();
  }
  
  public int g()
  {
    if (s < 0) {
      h();
    }
    return s;
  }
  
  public int h()
  {
    int i = b();
    s = i;
    return i;
  }
  
  public String toString()
  {
    return el.a(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.ek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */