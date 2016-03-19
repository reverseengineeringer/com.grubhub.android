package com.grubhub.AppBaseLibrary.android.dataServices.a.e;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

public class c
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSIPastOrderListDataModel>
  implements i
{
  private String b;
  private boolean c;
  private boolean d;
  
  public c(Context paramContext, String paramString, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString;
  }
  
  public c(Context paramContext, String paramString, boolean paramBoolean1, boolean paramBoolean2, i parami1, i parami2)
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
      locala.a(str, bool, d, this, this, f());
      return;
    }
  }
  
  public void a(GHSIPastOrderListDataModel paramGHSIPastOrderListDataModel)
  {
    if (paramGHSIPastOrderListDataModel != null)
    {
      b localb = c();
      localb.a(paramGHSIPastOrderListDataModel.getPastOrdersCount());
      localb.a(paramGHSIPastOrderListDataModel);
      d().i();
    }
    super.onResponse(paramGHSIPastOrderListDataModel);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.e.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */