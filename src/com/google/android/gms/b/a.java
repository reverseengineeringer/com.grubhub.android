package com.google.android.gms.b;

import android.net.Uri;
import android.os.Bundle;

public final class a
  extends f
{
  private a(Bundle paramBundle)
  {
    super(paramBundle);
  }
  
  public static a a(String paramString1, String paramString2, Uri paramUri1, Uri paramUri2)
  {
    b localb = new b(paramString1);
    paramString2 = new g().b(paramString2);
    if (paramUri1 == null) {}
    for (paramString1 = null;; paramString1 = paramUri1.toString()) {
      return localb.a(paramString2.c(paramString1).b(paramUri2).b()).a();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */