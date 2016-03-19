package com.grubhub.AppBaseLibrary.android.dataServices.a.j;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;

public class b
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSIUserAuthDataModel>
{
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  
  public b(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    e = paramString3;
    c = paramString1;
    d = paramString2;
    f = paramString4;
    b = paramString5;
  }
  
  public void a()
  {
    super.a();
    b().a(e, f, c, d, b, this, this, f());
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.j.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */