package com.google.android.gms.b;

import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.internal.aq;

public final class b
  extends g
{
  public b(String paramString)
  {
    aq.a(paramString);
    super.b("type", paramString);
  }
  
  public a a()
  {
    aq.a(a.get("object"), "setObject is required before calling build().");
    aq.a(a.get("type"), "setType is required before calling build().");
    Bundle localBundle = (Bundle)a.getParcelable("object");
    aq.a(localBundle.get("name"), "Must call setObject() with a valid name. Example: setObject(new Thing.Builder().setName(name).setUrl(url))");
    aq.a(localBundle.get("url"), "Must call setObject() with a valid app URI. Example: setObject(new Thing.Builder().setName(name).setUrl(url))");
    return new a(a, null);
  }
  
  public b a(Uri paramUri)
  {
    if (paramUri != null) {
      super.b("url", paramUri.toString());
    }
    return this;
  }
  
  public b a(f paramf)
  {
    aq.a(paramf);
    return (b)super.b("object", paramf);
  }
  
  public b a(String paramString)
  {
    return (b)super.b("name", paramString);
  }
  
  public b a(String paramString, f paramf)
  {
    return (b)super.b(paramString, paramf);
  }
  
  public b a(String paramString1, String paramString2)
  {
    return (b)super.b(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */