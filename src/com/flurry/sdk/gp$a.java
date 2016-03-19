package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class gp$a
  implements iv<gp>
{
  public gp a(InputStream paramInputStream)
    throws IOException
  {
    if (paramInputStream == null) {
      return null;
    }
    paramInputStream = new DataInputStream(paramInputStream)
    {
      public void close() {}
    };
    gp localgp = new gp(null);
    localgp.a(paramInputStream.readLong());
    localgp.a(paramInputStream.readBoolean());
    localgp.a(paramInputStream.readInt());
    localgp.b(paramInputStream.readUTF());
    localgp.c(paramInputStream.readUTF());
    a = paramInputStream.readLong();
    return localgp;
  }
  
  public void a(OutputStream paramOutputStream, gp paramgp)
    throws IOException
  {
    if ((paramOutputStream == null) || (paramgp == null)) {
      return;
    }
    paramOutputStream = new DataOutputStream(paramOutputStream)
    {
      public void close() {}
    };
    paramOutputStream.writeLong(paramgp.d());
    paramOutputStream.writeBoolean(paramgp.e());
    paramOutputStream.writeInt(paramgp.f());
    paramOutputStream.writeUTF(paramgp.g());
    paramOutputStream.writeUTF(paramgp.h());
    paramOutputStream.writeLong(a);
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gp.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */