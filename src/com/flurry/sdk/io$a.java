package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class io$a
  implements iv<io>
{
  public io a(InputStream paramInputStream)
    throws IOException
  {
    if (paramInputStream == null) {}
    io localio;
    int i;
    do
    {
      return null;
      paramInputStream = new DataInputStream(paramInputStream)
      {
        public void close() {}
      };
      localio = new io(null);
      i = paramInputStream.readShort();
    } while (i == 0);
    io.a(localio, new byte[i]);
    paramInputStream.readFully(io.a(localio));
    if (paramInputStream.readUnsignedShort() == 0) {}
    return localio;
  }
  
  public void a(OutputStream paramOutputStream, io paramio)
    throws IOException
  {
    if ((paramOutputStream == null) || (paramio == null)) {
      return;
    }
    paramOutputStream = new DataOutputStream(paramOutputStream)
    {
      public void close() {}
    };
    paramOutputStream.writeShort(io.a(paramio).length);
    paramOutputStream.write(io.a(paramio));
    paramOutputStream.writeShort(0);
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.io.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */