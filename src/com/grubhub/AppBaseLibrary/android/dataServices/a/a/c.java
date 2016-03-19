package com.grubhub.AppBaseLibrary.android.dataServices.a.a;

import android.content.Context;
import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.utils.f;

public class c
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSIUserAuthDataModel>
{
  private String b;
  
  public c(Context paramContext, String paramString, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString;
  }
  
  public void a()
  {
    super.a();
    if (!TextUtils.isEmpty(b)) {
      b().c(b, this, this, f());
    }
  }
  
  public void a(GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    if ((paramGHSIUserAuthDataModel != null) && (f.b(paramGHSIUserAuthDataModel.getAccessToken())))
    {
      super.onResponse(paramGHSIUserAuthDataModel);
      return;
    }
    a(new b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */