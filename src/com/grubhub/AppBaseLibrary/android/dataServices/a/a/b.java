package com.grubhub.AppBaseLibrary.android.dataServices.a.a;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import java.util.HashMap;
import java.util.Map;

public class b
  extends com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSIUserAuthDataModel>
{
  private Handler b = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      if (what == 15)
      {
        if (b.a(b.this) != null) {
          b.a(b.this).g();
        }
        a(null);
      }
    }
  };
  private d c;
  
  public b(Context paramContext, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
  }
  
  private void a(Context paramContext)
  {
    c = new d(paramContext, null, null, null);
    c.a(new e()
    {
      public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
      {
        b.this.a(paramAnonymousGHSIUserAuthDataModel);
      }
    });
    c.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        a(null);
      }
    });
    c.a();
  }
  
  public void a()
  {
    super.a();
    b().a();
    a(a);
    Message localMessage = b.obtainMessage(15);
    b.sendMessageDelayed(localMessage, a.getResources().getInteger(2131492873));
  }
  
  public void a(GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    try
    {
      super.onResponse(paramGHSIUserAuthDataModel);
      if (b != null) {
        b.removeMessages(15);
      }
      paramGHSIUserAuthDataModel = d();
      HashMap localHashMap = new HashMap();
      localHashMap.put("LoggedInStatus", "Not Logged In");
      paramGHSIUserAuthDataModel.a(localHashMap);
      paramGHSIUserAuthDataModel.a(new c("user authentication", "logout", "successful"));
      paramGHSIUserAuthDataModel.c();
      paramGHSIUserAuthDataModel.i();
      com.grubhub.AppBaseLibrary.android.utils.urbanAirship.a.a().c();
      return;
    }
    finally {}
  }
  
  public void g()
  {
    super.g();
    if ((c != null) && (c.h())) {
      c.g();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */