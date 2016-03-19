package com.google.android.gms.d;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import android.util.LogPrinter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public final class bn
  implements bx
{
  private static final Uri a;
  private final LogPrinter b = new LogPrinter(4, "GA/LogCatTransport");
  
  static
  {
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.scheme("uri");
    localBuilder.authority("local");
    a = localBuilder.build();
  }
  
  public Uri a()
  {
    return a;
  }
  
  public void a(bo parambo)
  {
    Object localObject = new ArrayList(parambo.b());
    Collections.sort((List)localObject, new Comparator()
    {
      public int a(bq paramAnonymousbq1, bq paramAnonymousbq2)
      {
        return paramAnonymousbq1.getClass().getCanonicalName().compareTo(paramAnonymousbq2.getClass().getCanonicalName());
      }
    });
    parambo = new StringBuilder();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = ((bq)((Iterator)localObject).next()).toString();
      if (!TextUtils.isEmpty(str))
      {
        if (parambo.length() != 0) {
          parambo.append(", ");
        }
        parambo.append(str);
      }
    }
    b.println(parambo.toString());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */