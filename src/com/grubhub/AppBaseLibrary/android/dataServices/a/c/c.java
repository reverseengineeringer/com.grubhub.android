package com.grubhub.AppBaseLibrary.android.dataServices.a.c;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites.GHSIFavoriteListDataModel;
import java.util.LinkedHashSet;

public class c
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSIFavoriteListDataModel>
{
  private String b;
  private String c;
  
  public c(Context paramContext, String paramString1, String paramString2, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString1;
    c = paramString2;
  }
  
  public void a()
  {
    super.a();
    b().k(b, c, this, this, f());
  }
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    paramb = c();
    LinkedHashSet localLinkedHashSet = paramb.E();
    if (!localLinkedHashSet.contains(c))
    {
      localLinkedHashSet.add(c);
      paramb.a(localLinkedHashSet);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.c.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */