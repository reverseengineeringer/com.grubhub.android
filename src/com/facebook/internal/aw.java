package com.facebook.internal;

class aw
  implements av
{
  private final Runnable c;
  private aw d;
  private aw e;
  private boolean f;
  
  static
  {
    if (!au.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  aw(au paramau, Runnable paramRunnable)
  {
    c = paramRunnable;
  }
  
  aw a(aw paramaw)
  {
    if ((!a) && (d == null)) {
      throw new AssertionError();
    }
    if ((!a) && (e == null)) {
      throw new AssertionError();
    }
    aw localaw = paramaw;
    if (paramaw == this) {
      if (d != this) {
        break label93;
      }
    }
    label93:
    for (localaw = null;; localaw = d)
    {
      d.e = e;
      e.d = d;
      e = null;
      d = null;
      return localaw;
    }
  }
  
  aw a(aw paramaw, boolean paramBoolean)
  {
    if ((!a) && (d != null)) {
      throw new AssertionError();
    }
    if ((!a) && (e != null)) {
      throw new AssertionError();
    }
    if (paramaw == null)
    {
      e = this;
      d = this;
      paramaw = this;
    }
    while (paramBoolean)
    {
      return this;
      d = paramaw;
      e = e;
      aw localaw = d;
      e.d = this;
      e = this;
    }
    return paramaw;
  }
  
  Runnable a()
  {
    return c;
  }
  
  void a(boolean paramBoolean)
  {
    f = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */