package com.facebook;

import android.os.Handler;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

class ag
  extends OutputStream
  implements ao
{
  private final Map<GraphRequest, ap> a = new HashMap();
  private final Handler b;
  private GraphRequest c;
  private ap d;
  private int e;
  
  ag(Handler paramHandler)
  {
    b = paramHandler;
  }
  
  int a()
  {
    return e;
  }
  
  void a(long paramLong)
  {
    if (d == null)
    {
      d = new ap(b, c);
      a.put(c, d);
    }
    d.b(paramLong);
    e = ((int)(e + paramLong));
  }
  
  public void a(GraphRequest paramGraphRequest)
  {
    c = paramGraphRequest;
    if (paramGraphRequest != null) {}
    for (paramGraphRequest = (ap)a.get(paramGraphRequest);; paramGraphRequest = null)
    {
      d = paramGraphRequest;
      return;
    }
  }
  
  Map<GraphRequest, ap> b()
  {
    return a;
  }
  
  public void write(int paramInt)
  {
    a(1L);
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    a(paramArrayOfByte.length);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a(paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */