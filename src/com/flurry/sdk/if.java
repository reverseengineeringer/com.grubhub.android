package com.flurry.sdk;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class if<ObjectType>
{
  private static final String a = if.class.getSimpleName();
  private static final byte[] b = { 113, -92, -8, 125, 121, 107, -65, -61, -74, -114, -32, 0, -57, -87, -35, -56, -6, -52, 51, 126, -104, 49, 79, -52, 118, -84, 99, -52, -14, -126, -27, -64 };
  private String c;
  private iv<ObjectType> d;
  
  public if(String paramString, iv<ObjectType> paramiv)
  {
    c = paramString;
    d = paramiv;
  }
  
  public static void a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {}
    for (;;)
    {
      return;
      int j = paramArrayOfByte.length;
      int k = b.length;
      int i = 0;
      while (i < j)
      {
        paramArrayOfByte[i] = ((byte)(paramArrayOfByte[i] ^ b[(i % k)] ^ i * 31 % 251));
        i += 1;
      }
    }
  }
  
  public static void b(byte[] paramArrayOfByte)
  {
    a(paramArrayOfByte);
  }
  
  public static int c(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return 0;
    }
    ht localht = new ht();
    localht.update(paramArrayOfByte);
    return localht.b();
  }
  
  public byte[] a(ObjectType paramObjectType)
    throws IOException
  {
    if (paramObjectType == null) {
      throw new IOException("Encoding: " + c + ": Nothing to encode");
    }
    Object localObject = new ByteArrayOutputStream();
    d.a((OutputStream)localObject, paramObjectType);
    paramObjectType = ((ByteArrayOutputStream)localObject).toByteArray();
    ib.a(3, a, "Encoding " + c + ": " + new String(paramObjectType));
    localObject = new it(new ir());
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    ((iv)localObject).a(localByteArrayOutputStream, paramObjectType);
    paramObjectType = localByteArrayOutputStream.toByteArray();
    a(paramObjectType);
    return paramObjectType;
  }
  
  public ObjectType d(byte[] paramArrayOfByte)
    throws IOException
  {
    if (paramArrayOfByte == null) {
      throw new IOException("Decoding: " + c + ": Nothing to decode");
    }
    b(paramArrayOfByte);
    paramArrayOfByte = (byte[])new it(new ir()).b(new ByteArrayInputStream(paramArrayOfByte));
    ib.a(3, a, "Decoding: " + c + ": " + new String(paramArrayOfByte));
    paramArrayOfByte = new ByteArrayInputStream(paramArrayOfByte);
    return (ObjectType)d.b(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.if
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */