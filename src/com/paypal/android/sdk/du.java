package com.paypal.android.sdk;

import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;

final class du
  extends ax
{
  private final dz a;
  
  private du(dp paramdp, dz paramdz)
  {
    a = paramdz;
  }
  
  public final void a(String paramString1, String paramString2)
  {
    a.b(paramString1);
    dp.c();
    new StringBuilder().append(a.o()).append(" success");
  }
  
  public final void a(Throwable paramThrowable, String paramString)
  {
    a.b(paramString);
    if ((paramThrowable instanceof NoHttpResponseException))
    {
      dp.e(b).a().getConnectionManager().closeExpiredConnections();
      b.b(a);
      return;
    }
    dp.c();
    new StringBuilder().append(a.o()).append(" failure: ").append(paramThrowable.getMessage());
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.du
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */