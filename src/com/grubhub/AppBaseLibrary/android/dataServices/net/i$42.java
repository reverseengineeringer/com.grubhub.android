package com.grubhub.AppBaseLibrary.android.dataServices.net;

import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.b.a;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;

class i$42
  implements e<GHSIUserAuthDataModel>
{
  i$42(i parami, String paramString1, String paramString2, e parame, d paramd) {}
  
  public void a(GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    if ((paramGHSIUserAuthDataModel != null) && (a.toLowerCase().equals(paramGHSIUserAuthDataModel.getEmail().toLowerCase())) && (!TextUtils.isEmpty(paramGHSIUserAuthDataModel.getToken())))
    {
      paramGHSIUserAuthDataModel.setPassword(b);
      if (c != null) {
        c.onResponse(paramGHSIUserAuthDataModel);
      }
    }
    while (d == null) {
      return;
    }
    d.a(new b(a.ERROR_CODE_UNKNOWN));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.i.42
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */