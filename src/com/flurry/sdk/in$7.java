package com.flurry.sdk;

import java.util.Set;

class in$7
  extends jp
{
  in$7(in paramin, String paramString1, String paramString2) {}
  
  public void a()
  {
    if (!c.e.a(a, b)) {
      ib.a(6, c.c, "Internal error. Block wasn't deleted with id = " + a);
    }
    if (!c.d.remove(a)) {
      ib.a(6, c.c, "Internal error. Block with id = " + a + " was not in progress state");
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.in.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */