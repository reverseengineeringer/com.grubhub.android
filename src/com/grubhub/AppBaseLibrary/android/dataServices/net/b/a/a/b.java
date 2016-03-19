package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyAccessModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.c;

public class b
  extends c<b, a, GHSIYummyRummyModel, Void>
{
  protected GHSIYummyRummyAccessModel j;
  
  public b(Context paramContext)
  {
    super(paramContext);
  }
  
  public b a(GHSIYummyRummyAccessModel paramGHSIYummyRummyAccessModel)
  {
    j = paramGHSIYummyRummyAccessModel;
    return this;
  }
  
  public a b()
  {
    return new a(this, null);
  }
  
  protected b c()
  {
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */