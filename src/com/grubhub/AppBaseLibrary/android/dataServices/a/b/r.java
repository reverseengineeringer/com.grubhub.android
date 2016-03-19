package com.grubhub.AppBaseLibrary.android.dataServices.a.b;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.a;

public class r
  extends d
{
  private String b;
  private long c;
  
  public r(Context paramContext, String paramString, long paramLong, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString;
    c = paramLong;
  }
  
  public void a()
  {
    super.a();
    b().a(b, c, this, this, f());
  }
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    if (paramGHSICartDataModel != null) {
      c().a(paramGHSICartDataModel);
    }
    super.onResponse(paramGHSICartDataModel);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.b.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */