package com.google.android.gms.tagmanager;

import com.google.android.gms.d.bc;

class bt
  implements db
{
  bt(bs parambs) {}
  
  public void a(ah paramah)
  {
    bs.a(a, paramah.a());
  }
  
  public void b(ah paramah)
  {
    bs.a(a, paramah.a());
    ba.e("Permanent failure dispatching hitId: " + paramah.a());
  }
  
  public void c(ah paramah)
  {
    long l = paramah.b();
    if (l == 0L) {
      bs.a(a, paramah.a(), bs.a(a).a());
    }
    while (l + 14400000L >= bs.a(a).a()) {
      return;
    }
    bs.a(a, paramah.a());
    ba.e("Giving up on failed hitId: " + paramah.a());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */