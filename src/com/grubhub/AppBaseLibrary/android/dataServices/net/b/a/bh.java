package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel;

public class bh
  extends c<bh, bg, GHSIReviewsDataModel, Void>
{
  protected String j;
  protected int k;
  protected String l;
  
  public bh(Context paramContext)
  {
    super(paramContext);
  }
  
  public bg b()
  {
    return new bg(this, null);
  }
  
  public bh b(int paramInt)
  {
    k = paramInt;
    return this;
  }
  
  protected bh c()
  {
    return this;
  }
  
  public bh e(String paramString)
  {
    j = paramString;
    return this;
  }
  
  public bh f(String paramString)
  {
    l = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */