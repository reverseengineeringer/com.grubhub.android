package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

public class gz$a
  implements iv<gz>
{
  public gz a(InputStream paramInputStream)
    throws IOException
  {
    if (paramInputStream == null)
    {
      paramInputStream = null;
      return paramInputStream;
    }
    DataInputStream local1 = new DataInputStream(paramInputStream)
    {
      public void close() {}
    };
    gz localgz = new gz();
    local1.readUTF();
    local1.readUTF();
    gz.a(localgz, local1.readBoolean());
    gz.a(localgz, local1.readLong());
    for (;;)
    {
      int i = local1.readUnsignedShort();
      paramInputStream = localgz;
      if (i == 0) {
        break;
      }
      paramInputStream = new byte[i];
      local1.readFully(paramInputStream);
      paramInputStream = new gw(paramInputStream);
      gz.a(localgz).add(0, paramInputStream);
    }
  }
  
  public void a(OutputStream paramOutputStream, gz paramgz)
    throws IOException
  {
    throw new UnsupportedOperationException("Serialization not supported");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gz.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */