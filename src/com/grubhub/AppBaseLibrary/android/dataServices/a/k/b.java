package com.grubhub.AppBaseLibrary.android.dataServices.a.k;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyStatusModel;

public class b
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSIYummyRummyStatusModel>
{
  private String b;
  
  public b(Context paramContext, String paramString, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString;
  }
  
  public void a()
  {
    super.a();
    b().h(b, this, this, f());
  }
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    c().o(true);
    super.a(paramb);
  }
  
  public void a(GHSIYummyRummyStatusModel paramGHSIYummyRummyStatusModel)
  {
    com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = c();
    if (paramGHSIYummyRummyStatusModel == null) {}
    for (boolean bool = true;; bool = paramGHSIYummyRummyStatusModel.displayYummyRummy())
    {
      localb.o(bool);
      super.onResponse(paramGHSIYummyRummyStatusModel);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.k.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */