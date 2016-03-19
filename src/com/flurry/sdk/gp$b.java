package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class gp$b
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
    a = paramInputStream.readLong();
    localgp.a(paramInputStream.readUTF());
    return localgp;
  }
  
  public void a(OutputStream paramOutputStream, gp paramgp)
    throws IOException
  {
    throw new UnsupportedOperationException("Serialization not supported");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gp.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */