package com.grubhub.AppBaseLibrary.android.dataServices.a.c;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites.GHSIFavoriteDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites.GHSIFavoriteListDataModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;

public class b
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSIFavoriteListDataModel>
{
  private String b;
  private boolean c;
  private boolean d;
  
  public b(Context paramContext, String paramString, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString;
  }
  
  public b(Context paramContext, String paramString, boolean paramBoolean1, boolean paramBoolean2, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString;
    c = paramBoolean1;
    d = paramBoolean2;
  }
  
  public void a()
  {
    super.a();
    com.grubhub.AppBaseLibrary.android.dataServices.net.a locala = b();
    String str = b;
    if (!c) {}
    for (boolean bool = true;; bool = false)
    {
      locala.b(str, bool, d, this, this, f());
      return;
    }
  }
  
  public void a(GHSIFavoriteListDataModel paramGHSIFavoriteListDataModel)
  {
    if (paramGHSIFavoriteListDataModel != null)
    {
      LinkedHashSet localLinkedHashSet = new LinkedHashSet();
      Iterator localIterator = paramGHSIFavoriteListDataModel.getFavoriteRestaurants().iterator();
      while (localIterator.hasNext())
      {
        String str = ((GHSIFavoriteDataModel)localIterator.next()).getRestaurantId();
        if (!localLinkedHashSet.contains(str)) {
          localLinkedHashSet.add(str);
        }
      }
      c().a(localLinkedHashSet);
    }
    super.onResponse(paramGHSIFavoriteListDataModel);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */