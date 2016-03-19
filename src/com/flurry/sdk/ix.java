package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class ix<T>
  implements iv<T>
{
  private final String a;
  private final int b;
  private final iy<T> c;
  
  public ix(String paramString, int paramInt, iy<T> paramiy)
  {
    a = paramString;
    b = paramInt;
    c = paramiy;
  }
  
  public void a(OutputStream paramOutputStream, T paramT)
    throws IOException
  {
    if ((paramOutputStream == null) || (c == null)) {
      return;
    }
    paramOutputStream = new DataOutputStream(paramOutputStream)
    {
      public void close() {}
    };
    paramOutputStream.writeUTF(a);
    paramOutputStream.writeInt(b);
    iv localiv = c.a(b);
    if (localiv == null) {
      throw new IOException("No serializer for version: " + b);
    }
    localiv.a(paramOutputStream, paramT);
    paramOutputStream.flush();
  }
  
  public T b(InputStream paramInputStream)
    throws IOException
  {
    if ((paramInputStream == null) || (c == null)) {
      return null;
    }
    paramInputStream = new DataInputStream(paramInputStream)
    {
      public void close() {}
    };
    Object localObject = paramInputStream.readUTF();
    if (!a.equals(localObject)) {
      throw new IOException("Signature: " + (String)localObject + " is invalid");
    }
    int i = paramInputStream.readInt();
    localObject = c.a(i);
    if (localObject == null) {
      throw new IOException("No serializer for version: " + i);
    }
    return (T)((iv)localObject).b(paramInputStream);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */