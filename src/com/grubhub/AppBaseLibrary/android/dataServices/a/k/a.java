package com.grubhub.AppBaseLibrary.android.dataServices.a.k;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyAccessModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyModel;

public class a
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSIYummyRummyModel>
{
  private GHSIYummyRummyAccessModel b;
  
  public a(Context paramContext, GHSIYummyRummyAccessModel paramGHSIYummyRummyAccessModel, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramGHSIYummyRummyAccessModel;
  }
  
  public void a()
  {
    super.a();
    b().a(b, this, this, f());
  }
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = c();
    localb.i(null);
    localb.j(null);
    localb.o(false);
    super.a(paramb);
  }
  
  public void a(GHSIYummyRummyModel paramGHSIYummyRummyModel)
  {
    if (paramGHSIYummyRummyModel != null)
    {
      com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = c();
      localb.i(paramGHSIYummyRummyModel.getPlayUrl());
      localb.j(paramGHSIYummyRummyModel.getRulesUrl());
    }
    super.onResponse(paramGHSIYummyRummyModel);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.k.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */