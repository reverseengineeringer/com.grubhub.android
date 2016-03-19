package com.facebook.a;

import java.io.Serializable;

class c
  implements Serializable
{
  private static final long serialVersionUID = -2488473066578201069L;
  private final String a;
  private final String b;
  
  private c(String paramString1, String paramString2)
  {
    a = paramString1;
    b = paramString2;
  }
  
  private Object readResolve()
  {
    return new b(a, b);
  }
}

/* Location:
 * Qualified Name:     com.facebook.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */