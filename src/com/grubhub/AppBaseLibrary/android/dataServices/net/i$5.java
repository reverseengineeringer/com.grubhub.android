package com.grubhub.AppBaseLibrary.android.dataServices.net;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;

class i$5
  implements e<GHSIUserAuthDataModel>
{
  i$5(i parami, e parame) {}
  
  public void a(GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    GHSApplication.a().b().b(paramGHSIUserAuthDataModel);
    if (a != null) {
      a.onResponse(paramGHSIUserAuthDataModel);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.i.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */