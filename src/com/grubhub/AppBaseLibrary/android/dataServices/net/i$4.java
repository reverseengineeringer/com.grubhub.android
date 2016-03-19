package com.grubhub.AppBaseLibrary.android.dataServices.net;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;

class i$4
  implements e<GHSIUserAuthDataModel>
{
  i$4(i parami, String paramString, e parame) {}
  
  public void a(GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    paramGHSIUserAuthDataModel.setPassword(a);
    GHSApplication.a().b().a(paramGHSIUserAuthDataModel);
    if (b != null) {
      b.onResponse(paramGHSIUserAuthDataModel);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.i.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */