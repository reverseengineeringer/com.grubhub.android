package org.b.a;

import android.content.Context;
import android.net.Uri;

public class c
  implements d
{
  private static String a = "market://details?id=";
  
  public Uri a(Context paramContext)
  {
    return Uri.parse(a + paramContext.getPackageName().toString());
  }
}

/* Location:
 * Qualified Name:     org.b.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */