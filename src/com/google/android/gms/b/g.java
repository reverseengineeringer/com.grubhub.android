package com.google.android.gms.b;

import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.internal.aq;

public class g
{
  final Bundle a = new Bundle();
  
  public f b()
  {
    return new f(a);
  }
  
  public g b(Uri paramUri)
  {
    aq.a(paramUri);
    b("url", paramUri.toString());
    return this;
  }
  
  public g b(String paramString)
  {
    aq.a(paramString);
    b("name", paramString);
    return this;
  }
  
  public g b(String paramString, f paramf)
  {
    aq.a(paramString);
    if (paramf != null) {
      a.putParcelable(paramString, a);
    }
    return this;
  }
  
  public g b(String paramString1, String paramString2)
  {
    aq.a(paramString1);
    if (paramString2 != null) {
      a.putString(paramString1, paramString2);
    }
    return this;
  }
  
  public g c(String paramString)
  {
    if (paramString != null) {
      b("id", paramString);
    }
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.b.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */