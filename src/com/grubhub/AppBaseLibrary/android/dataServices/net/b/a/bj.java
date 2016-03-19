package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantListDataModel;

public class bj
  extends c<bj, bi, GHSIRestaurantListDataModel, Void>
{
  protected GHSFilterSortCriteria j;
  protected Integer k;
  protected Integer l;
  protected String m;
  
  public bj(Context paramContext)
  {
    super(paramContext);
  }
  
  public bj a(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    j = paramGHSFilterSortCriteria;
    return this;
  }
  
  public bi b()
  {
    return new bi(this, null);
  }
  
  public bj b(int paramInt)
  {
    k = Integer.valueOf(paramInt);
    return this;
  }
  
  protected bj c()
  {
    return this;
  }
  
  public bj c(int paramInt)
  {
    l = Integer.valueOf(paramInt);
    return this;
  }
  
  public bj e(String paramString)
  {
    m = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */