package com.grubhub.AppBaseLibrary.android.dataServices.a.j;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import java.util.HashMap;
import java.util.Map;

public class a
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSIUserAuthDataModel>
{
  private String b;
  private String c;
  private String d;
  private String e;
  
  public a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString1;
    c = paramString2;
    d = paramString3;
    e = paramString4;
  }
  
  public void a()
  {
    super.a();
    b().a(b, c, d, e, this, this, f());
  }
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    d().a(new c("user authentication", "create account", "error"));
    super.a(paramb);
  }
  
  public void a(GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = c();
    if (localb.N() != null) {
      b().a();
    }
    localb.a(paramGHSIUserAuthDataModel);
    h localh = d();
    HashMap localHashMap = new HashMap();
    localHashMap.put("LoggedInStatus", "Logged In");
    localHashMap.put("UserID", paramGHSIUserAuthDataModel.getUdid());
    localh.a(localHashMap);
    localh.i();
    localh.a(new c("user authentication", "create account", "successful"));
    localb.a(0);
    e().a(paramGHSIUserAuthDataModel.getUdid());
    e().b();
    super.onResponse(paramGHSIUserAuthDataModel);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.j.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */