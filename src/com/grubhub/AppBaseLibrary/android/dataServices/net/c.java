package com.grubhub.AppBaseLibrary.android.dataServices.net;

import android.content.Context;
import android.content.Intent;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSMainActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel.GHSISession;
import com.grubhub.AppBaseLibrary.android.order.cart.i;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class c
{
  private final com.grubhub.AppBaseLibrary.android.b.b b;
  
  public c(a parama, com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    b = paramb;
  }
  
  private void a(Context paramContext, GHSIUserAuthDataModel.GHSISession paramGHSISession, com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    HashMap localHashMap = new HashMap();
    if ((paramGHSISession != null) && ((paramGHSISession instanceof com.grubhub.AppBaseLibrary.android.utils.e.a.a.b)))
    {
      com.grubhub.AppBaseLibrary.android.utils.e.a.a.a locala = new com.grubhub.AppBaseLibrary.android.utils.e.a.a.a();
      ((com.grubhub.AppBaseLibrary.android.utils.e.a.a.b)paramGHSISession).accept(locala);
      localHashMap.putAll(locala.a());
    }
    if (paramb != null)
    {
      paramGHSISession = new com.grubhub.AppBaseLibrary.android.utils.e.a.a.a();
      paramb.accept(paramGHSISession);
      localHashMap.putAll(paramGHSISession.a());
    }
    if (localHashMap.size() > 0) {
      com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("FORCE_USER_TO_SIGN_IN", localHashMap);
    }
    for (;;)
    {
      a.a(paramContext);
      return;
      com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("FORCE_USER_TO_SIGN_IN");
    }
  }
  
  private void a(final Context paramContext, final d paramd)
  {
    Object localObject = GHSApplication.a().b();
    GHSIUserAuthDataModel localGHSIUserAuthDataModel = GHSApplication.c(paramContext);
    if ((localGHSIUserAuthDataModel != null) && (com.grubhub.AppBaseLibrary.android.utils.a.a.a(localGHSIUserAuthDataModel.getSession(), new Date()))) {}
    for (final String str = localGHSIUserAuthDataModel.getRefreshToken();; str = null)
    {
      if (b.c() == com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_HTTP401)
      {
        GHSIUserAuthDataModel.GHSISession localGHSISession;
        if (localGHSIUserAuthDataModel != null)
        {
          localGHSISession = localGHSIUserAuthDataModel.getSession();
          localGHSISession.setRefresh_token_expire_time(0L);
          localGHSISession.setToken_expire_time(0L);
          ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).b(localGHSIUserAuthDataModel);
        }
        if (GHSApplication.b(paramContext))
        {
          localGHSIUserAuthDataModel = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).N();
          localGHSISession = localGHSIUserAuthDataModel.getSession();
          localGHSISession.setRefresh_token_expire_time(0L);
          localGHSISession.setToken_expire_time(0L);
          ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).a(localGHSIUserAuthDataModel);
        }
      }
      localObject = new com.grubhub.AppBaseLibrary.android.dataServices.a.a.d(paramContext, str, null, null);
      ((com.grubhub.AppBaseLibrary.android.dataServices.a.a.d)localObject).a(new e()
      {
        public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
        {
          if ((com.grubhub.AppBaseLibrary.android.utils.f.a(str)) && (!com.grubhub.AppBaseLibrary.android.utils.a.a.a(paramAnonymousGHSIUserAuthDataModel.getSession(), new Date(), false)))
          {
            i.a();
            paramAnonymousGHSIUserAuthDataModel = GHSMainActivity.a(paramContext);
            paramAnonymousGHSIUserAuthDataModel.addFlags(268435456);
            paramContext.startActivity(paramAnonymousGHSIUserAuthDataModel);
          }
          while (paramd == null) {
            return;
          }
          paramd.a(c.a(c.this));
        }
      });
      ((com.grubhub.AppBaseLibrary.android.dataServices.a.a.d)localObject).a(new d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          if (paramd != null) {
            paramd.a(c.a(c.this));
          }
        }
      });
      ((com.grubhub.AppBaseLibrary.android.dataServices.a.a.d)localObject).a();
      return;
    }
  }
  
  private void a(Context paramContext, d paramd, boolean paramBoolean1, boolean paramBoolean2)
  {
    com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
    if (b.c() == com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_HTTP401)
    {
      if (paramBoolean1)
      {
        localGHSIUserAuthDataModel = localb.N();
        localGHSISession = localGHSIUserAuthDataModel.getSession();
        localGHSISession.setRefresh_token_expire_time(0L);
        localGHSISession.setToken_expire_time(0L);
        localb.a(localGHSIUserAuthDataModel);
        if ((paramBoolean2) && (paramd != null)) {
          paramd.a(b);
        }
        a(paramContext, localGHSISession, b);
      }
      while (paramd == null)
      {
        GHSIUserAuthDataModel localGHSIUserAuthDataModel;
        GHSIUserAuthDataModel.GHSISession localGHSISession;
        return;
      }
      paramd.a(b);
      return;
    }
    b(paramContext, paramd, paramBoolean1, paramBoolean2);
  }
  
  private void b(final Context paramContext, final d paramd, final boolean paramBoolean1, final boolean paramBoolean2)
  {
    final GHSIUserAuthDataModel.GHSISession localGHSISession;
    if (GHSApplication.d(paramContext) != null)
    {
      localGHSISession = GHSApplication.d(paramContext).getSession();
      if (!com.grubhub.AppBaseLibrary.android.utils.a.a.a(localGHSISession, new Date())) {
        break label98;
      }
      localc = new com.grubhub.AppBaseLibrary.android.dataServices.a.a.c(paramContext, localGHSISession.getRefresh_token(), null, null);
      localc.a(new e()
      {
        public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
        {
          if (paramd != null) {
            paramd.a(c.a(c.this));
          }
        }
      });
      localc.a(new d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          if (paramBoolean1)
          {
            if ((paramBoolean2) && (paramd != null)) {
              paramd.a(paramAnonymousb);
            }
            c.a(c.this, paramContext, localGHSISession, paramAnonymousb);
          }
        }
      });
      localc.a();
    }
    label98:
    while (!paramBoolean1)
    {
      com.grubhub.AppBaseLibrary.android.dataServices.a.a.c localc;
      return;
      localGHSISession = null;
      break;
    }
    if ((paramBoolean2) && (paramd != null)) {
      paramd.a(b);
    }
    a(paramContext, localGHSISession, null);
  }
  
  public void a(Context paramContext, d paramd, f paramf)
  {
    a(paramContext, paramd, paramf, true, false);
  }
  
  public void a(Context paramContext, d paramd, f paramf, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramf == f.USER) || ((paramf == f.USER_WHEN_LOGGED_IN) && (a.d())))
    {
      a(paramContext, paramd, paramBoolean1, paramBoolean2);
      return;
    }
    a(paramContext, paramd);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */