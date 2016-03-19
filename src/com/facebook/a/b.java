package com.facebook.a;

import com.facebook.AccessToken;
import com.facebook.internal.al;
import com.facebook.m;
import java.io.Serializable;

class b
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private final String a;
  private final String b;
  
  b(AccessToken paramAccessToken)
  {
    this(paramAccessToken.b(), m.i());
  }
  
  b(String paramString1, String paramString2)
  {
    String str = paramString1;
    if (al.a(paramString1)) {
      str = null;
    }
    a = str;
    b = paramString2;
  }
  
  private Object writeReplace()
  {
    return new c(a, b, null);
  }
  
  String a()
  {
    return a;
  }
  
  String b()
  {
    return b;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof b)) {}
    do
    {
      return false;
      paramObject = (b)paramObject;
    } while ((!al.a(a, a)) || (!al.a(b, b)));
    return true;
  }
  
  public int hashCode()
  {
    int j = 0;
    int i;
    if (a == null)
    {
      i = 0;
      if (b != null) {
        break label33;
      }
    }
    for (;;)
    {
      return i ^ j;
      i = a.hashCode();
      break;
      label33:
      j = b.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */