package com.facebook.a;

import java.io.Serializable;
import org.json.JSONException;

class e
  implements Serializable
{
  private static final long serialVersionUID = -2488473066578201069L;
  private final String a;
  private final boolean b;
  
  private e(String paramString, boolean paramBoolean)
  {
    a = paramString;
    b = paramBoolean;
  }
  
  private Object readResolve()
    throws JSONException
  {
    return new d(a, b, null);
  }
}

/* Location:
 * Qualified Name:     com.facebook.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */