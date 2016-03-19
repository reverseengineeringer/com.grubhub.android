package com.paypal.android.sdk;

final class do
  implements Runnable
{
  do(dn paramdn, dz paramdz) {}
  
  public final void run()
  {
    dn.c();
    new StringBuilder("Mock executing ").append(a.o()).append(" request: ").append(a.g());
    String str;
    if (b.c(a))
    {
      str = b.a();
      a.i().a();
      new StringBuilder("mock failure:\n").append(str);
      a.b(str);
      dn.a(a, b.b());
    }
    for (;;)
    {
      if (!a.a()) {}
      try
      {
        dn.c();
        new StringBuilder("sleep for [").append(b.b).append(" ms].");
        Thread.sleep(b.b);
        dn.c();
        new StringBuilder("end [").append(b.b).append(" ms] sleep");
        b.a.a(a);
        return;
        str = a.e();
        if (ft.b(str)) {
          throw new RuntimeException("Blank mock value for " + a.i());
        }
        a.i().a();
        new StringBuilder("mock response:").append(str);
        a.b(str);
        dn.a(a);
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          a.i().a();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.do
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */