package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class gk$a
  implements iv<gk>
{
  public gk a(InputStream paramInputStream)
    throws IOException
  {
    if (paramInputStream == null) {
      return null;
    }
    paramInputStream = new DataInputStream(paramInputStream)
    {
      public void close() {}
    };
    gk localgk = new gk();
    gk.a(localgk, paramInputStream.readLong());
    gk.a(localgk, paramInputStream.readBoolean());
    gk.a(localgk, new byte[paramInputStream.readInt()]);
    paramInputStream.readFully(gk.c(localgk));
    return localgk;
  }
  
  public void a(OutputStream paramOutputStream, gk paramgk)
    throws IOException
  {
    if ((paramOutputStream == null) || (paramgk == null)) {
      return;
    }
    paramOutputStream = new DataOutputStream(paramOutputStream)
    {
      public void close() {}
    };
    paramOutputStream.writeLong(gk.a(paramgk));
    paramOutputStream.writeBoolean(gk.b(paramgk));
    paramOutputStream.writeInt(gk.c(paramgk).length);
    paramOutputStream.write(gk.c(paramgk));
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gk.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */