package com.grubhub.AppBaseLibrary.android.dataServices.net;

import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2UserAuthDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2UserAuthDTO.GHSClaim;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2UserAuthDTO.GHSCredential;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2UserAuthDTO.GHSSession;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import java.util.ArrayList;
import java.util.Iterator;

class i$43
  implements e<GHSIUserAuthDataModel>
{
  i$43(i parami, String paramString1, String paramString2, e parame) {}
  
  public void a(GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    Object localObject = new ArrayList();
    Iterator localIterator = paramGHSIUserAuthDataModel.getClaims().iterator();
    while (localIterator.hasNext()) {
      ((ArrayList)localObject).add((V2UserAuthDTO.GHSClaim)localIterator.next());
    }
    localObject = new V2UserAuthDTO((V2UserAuthDTO.GHSCredential)paramGHSIUserAuthDataModel.getCredential(), (V2UserAuthDTO.GHSSession)paramGHSIUserAuthDataModel.getSession(), (ArrayList)localObject);
    if (!TextUtils.isEmpty(a)) {
      paramGHSIUserAuthDataModel.setPassword(a);
    }
    for (;;)
    {
      GHSApplication.a().b().a(paramGHSIUserAuthDataModel);
      if (c != null) {
        c.onResponse(localObject);
      }
      return;
      paramGHSIUserAuthDataModel.setPassword(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.i.43
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */