package com.grubhub.AppBaseLibrary.android.feedback;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import java.util.UUID;

public class d
{
  public static String a()
  {
    return UUID.randomUUID().toString().replace("-", "");
  }
  
  public static boolean a(Context paramContext, b paramb)
  {
    boolean bool2 = true;
    com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
    boolean bool1;
    if (!localb.w()) {
      bool1 = bool2;
    }
    switch (1.a[paramb.ordinal()])
    {
    default: 
      bool1 = false;
    }
    for (;;)
    {
      if (bool1)
      {
        localb.c(0);
        localb.k(false);
      }
      return bool1;
      int i = localb.x() + 1;
      if (GHSApplication.b(paramContext))
      {
        bool1 = bool2;
        if (i >= 3) {}
      }
      else
      {
        bool1 = bool2;
        if (i < 6)
        {
          localb.c(i);
          bool1 = false;
          continue;
          if ((!GHSApplication.b(paramContext)) || (!localb.y())) {
            break;
          }
          bool1 = bool2;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.feedback.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */