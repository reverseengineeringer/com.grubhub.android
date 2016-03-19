package com.grubhub.AppBaseLibrary.android.dataServices.net;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;

class i$3
  implements e<GHSIUserAuthDataModel>
{
  i$3(i parami, String paramString, e parame) {}
  
  public void a(GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    paramGHSIUserAuthDataModel.setPassword(a);
    if (b != null) {
      b.onResponse(paramGHSIUserAuthDataModel);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.i.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */