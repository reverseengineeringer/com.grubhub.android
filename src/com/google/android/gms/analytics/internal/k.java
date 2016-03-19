package com.google.android.gms.analytics.internal;

import com.google.android.gms.common.internal.aq;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

class k
{
  private int b;
  private ByteArrayOutputStream c = new ByteArrayOutputStream();
  
  public k(j paramj) {}
  
  public int a()
  {
    return b;
  }
  
  public boolean a(c paramc)
  {
    aq.a(paramc);
    if (b + 1 > a.zzhR().m()) {
      return false;
    }
    Object localObject = a.a(paramc, false);
    if (localObject == null)
    {
      a.zzhQ().a(paramc, "Error formatting hit");
      return true;
    }
    localObject = ((String)localObject).getBytes();
    int j = localObject.length;
    if (j > a.zzhR().e())
    {
      a.zzhQ().a(paramc, "Hit size exceeds the maximum size limit");
      return true;
    }
    int i = j;
    if (c.size() > 0) {
      i = j + 1;
    }
    if (i + c.size() > a.zzhR().g()) {
      return false;
    }
    try
    {
      if (c.size() > 0) {
        c.write(j.b());
      }
      c.write((byte[])localObject);
      b += 1;
      return true;
    }
    catch (IOException paramc)
    {
      a.zze("Failed to write payload when batching hits", paramc);
    }
    return true;
  }
  
  public byte[] b()
  {
    return c.toByteArray();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */