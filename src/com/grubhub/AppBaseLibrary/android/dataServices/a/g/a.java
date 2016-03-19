package com.grubhub.AppBaseLibrary.android.dataServices.a.g;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;

public class a
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSIAddressDataModel>
{
  private final double b;
  private final double c;
  
  public a(Context paramContext, double paramDouble1, double paramDouble2, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramDouble1;
    c = paramDouble2;
  }
  
  public void a()
  {
    super.a();
    b().a(b, c, this, this, f());
  }
  
  public void a(GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    if (paramGHSIAddressDataModel != null)
    {
      super.onResponse(paramGHSIAddressDataModel);
      return;
    }
    super.a(new b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_LOOKUP));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.g.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */