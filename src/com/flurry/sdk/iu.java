package com.flurry.sdk;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

public class iu<T>
  implements iv<List<T>>
{
  iv<T> a;
  
  public iu(iv<T> paramiv)
  {
    if (paramiv == null) {
      throw new IllegalArgumentException("recordSerializer cannot be null");
    }
    a = paramiv;
  }
  
  public List<T> a(InputStream paramInputStream)
    throws IOException
  {
    Object localObject;
    if (paramInputStream == null)
    {
      localObject = null;
      return (List<T>)localObject;
    }
    int j = new DataInputStream(paramInputStream)
    {
      public void close() {}
    }.readInt();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    for (;;)
    {
      localObject = localArrayList;
      if (i >= j) {
        break;
      }
      localObject = a.b(paramInputStream);
      if (localObject == null) {
        throw new IOException("Missing record.");
      }
      localArrayList.add(localObject);
      i += 1;
    }
  }
  
  public void a(OutputStream paramOutputStream, List<T> paramList)
    throws IOException
  {
    int j = 0;
    if (paramOutputStream == null) {
      return;
    }
    DataOutputStream local1 = new DataOutputStream(paramOutputStream)
    {
      public void close() {}
    };
    if (paramList != null) {}
    for (int i = paramList.size();; i = 0)
    {
      local1.writeInt(i);
      while (j < i)
      {
        a.a(paramOutputStream, paramList.get(j));
        j += 1;
      }
    }
    local1.flush();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.iu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */