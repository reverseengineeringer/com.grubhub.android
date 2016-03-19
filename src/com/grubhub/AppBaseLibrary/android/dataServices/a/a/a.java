package com.grubhub.AppBaseLibrary.android.dataServices.a.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.HashMap;
import java.util.Map;

public class a
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSIUserAuthDataModel>
{
  private final String b;
  private final String c;
  private final String d;
  private boolean e;
  
  public a(Context paramContext, String paramString1, String paramString2, String paramString3, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString1;
    c = paramString2;
    d = paramString3;
    e = true;
  }
  
  private void b(GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    h localh = d();
    HashMap localHashMap = new HashMap();
    localHashMap.put("LoggedInStatus", "Logged In");
    localHashMap.put("UserID", paramGHSIUserAuthDataModel.getUdid());
    localh.a(localHashMap);
    localh.i();
    if (e) {
      localh.a(new c("user authentication", "login", "successful"));
    }
  }
  
  private void i()
  {
    if (!e) {
      return;
    }
    d().a(new c("user authentication", "login", "error"));
  }
  
  public void a()
  {
    super.a();
    b().b(b, c, this, this, f());
  }
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    i();
    super.a(paramb);
  }
  
  public void a(GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    String str = null;
    if (paramGHSIUserAuthDataModel != null) {}
    for (Object localObject = paramGHSIUserAuthDataModel.getEmail();; localObject = null)
    {
      if (paramGHSIUserAuthDataModel != null) {
        str = paramGHSIUserAuthDataModel.getAccessToken();
      }
      if ((paramGHSIUserAuthDataModel == null) || (b == null) || (localObject == null) || (!b.toLowerCase().equals(((String)localObject).toLowerCase())) || (!f.b(str))) {
        break;
      }
      if ((d != null) && (!d.equalsIgnoreCase((String)localObject))) {
        b().a();
      }
      localObject = c();
      ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).a(paramGHSIUserAuthDataModel);
      ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).j(false);
      ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).c(0);
      ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).k(false);
      b(paramGHSIUserAuthDataModel);
      e().a(paramGHSIUserAuthDataModel.getUdid());
      e().b();
      super.onResponse(paramGHSIUserAuthDataModel);
      return;
    }
    a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */