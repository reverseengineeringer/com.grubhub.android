package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class iq$a
  implements iv<iq>
{
  public iq a(InputStream paramInputStream)
    throws IOException
  {
    if (paramInputStream == null) {
      return null;
    }
    paramInputStream = new DataInputStream(paramInputStream)
    {
      public void close() {}
    };
    iq localiq = new iq(null);
    iq.a(localiq, paramInputStream.readUTF());
    return localiq;
  }
  
  public void a(OutputStream paramOutputStream, iq paramiq)
    throws IOException
  {
    if ((paramOutputStream == null) || (paramiq == null)) {
      return;
    }
    paramOutputStream = new DataOutputStream(paramOutputStream)
    {
      public void close() {}
    };
    paramOutputStream.writeUTF(iq.a(paramiq));
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.iq.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */