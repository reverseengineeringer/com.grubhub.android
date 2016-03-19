package com.flurry.sdk;

class jb$2
  implements hw<hq>
{
  jb$2(jb paramjb) {}
  
  public void a(hq paramhq)
  {
    switch (jb.5.a[b.ordinal()])
    {
    default: 
      return;
    case 1: 
      ib.a(3, jb.h(), "Automatic onStartSession for context:" + a);
      jb.a(a, a);
      return;
    case 2: 
      ib.a(3, jb.h(), "Automatic onEndSession for context:" + a);
      a.d(a);
      return;
    }
    ib.a(3, jb.h(), "Automatic onEndSession (destroyed) for context:" + a);
    a.d(a);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jb.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */