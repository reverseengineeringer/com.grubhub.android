package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class gw$a
  implements iv<gw>
{
  public gw a(InputStream paramInputStream)
    throws IOException
  {
    if (paramInputStream == null) {
      return null;
    }
    paramInputStream = new DataInputStream(paramInputStream)
    {
      public void close() {}
    };
    gw localgw = new gw(null);
    int i = paramInputStream.readUnsignedShort();
    if (i > 0)
    {
      byte[] arrayOfByte = new byte[i];
      paramInputStream.readFully(arrayOfByte);
      a = arrayOfByte;
    }
    return localgw;
  }
  
  public void a(OutputStream paramOutputStream, gw paramgw)
    throws IOException
  {
    if ((paramOutputStream == null) || (paramgw == null)) {
      return;
    }
    paramOutputStream = new DataOutputStream(paramOutputStream)
    {
      public void close() {}
    };
    int i = 0;
    if (a != null) {
      i = a.length;
    }
    paramOutputStream.writeShort(i);
    if (i > 0) {
      paramOutputStream.write(a);
    }
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gw.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */