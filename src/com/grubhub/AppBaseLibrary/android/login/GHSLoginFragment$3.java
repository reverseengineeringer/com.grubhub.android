package com.grubhub.AppBaseLibrary.android.login;

import android.app.Activity;
import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import java.util.ArrayList;

class GHSLoginFragment$3
  implements e<GHSIUserAuthDataModel>
{
  GHSLoginFragment$3(GHSLoginFragment paramGHSLoginFragment, String paramString, Activity paramActivity) {}
  
  public void a(GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    boolean bool2 = false;
    if ((paramGHSIUserAuthDataModel != null) && (!TextUtils.isEmpty(paramGHSIUserAuthDataModel.getToken())))
    {
      GHSLoginFragment localGHSLoginFragment = c;
      boolean bool1 = bool2;
      if (a != null)
      {
        bool1 = bool2;
        if (!a.equalsIgnoreCase(paramGHSIUserAuthDataModel.getEmail())) {
          bool1 = true;
        }
      }
      GHSLoginFragment.b(localGHSLoginFragment, bool1);
      GHSLoginFragment.a(c, new com.grubhub.AppBaseLibrary.android.dataServices.a.i.b(b, null, new i()
      {
        public void a()
        {
          GHSLoginFragment.h(c)[0] = 1;
          GHSLoginFragment.a(c, null);
          GHSLoginFragment.i(c);
        }
      }));
      GHSLoginFragment.j(c).a();
      GHSLoginFragment.a(c, new com.grubhub.AppBaseLibrary.android.dataServices.a.f.c(b, null, new i()
      {
        public void a()
        {
          GHSLoginFragment.h(c)[1] = 1;
          GHSLoginFragment.a(c, null);
          GHSLoginFragment.i(c);
        }
      }));
      GHSLoginFragment.k(c).a();
      GHSLoginFragment.a(c, new com.grubhub.AppBaseLibrary.android.dataServices.a.c.b(b, paramGHSIUserAuthDataModel.getUdid(), null, new i()
      {
        public void a()
        {
          GHSLoginFragment.h(c)[2] = 1;
          GHSLoginFragment.a(c, null);
          GHSLoginFragment.i(c);
        }
      }));
      GHSLoginFragment.l(c).a();
      GHSLoginFragment.a(c, new com.grubhub.AppBaseLibrary.android.dataServices.a.e.c(b, paramGHSIUserAuthDataModel.getUdid(), null, new i()
      {
        public void a()
        {
          GHSLoginFragment.h(c)[3] = 1;
          GHSLoginFragment.a(c, null);
          GHSLoginFragment.i(c);
        }
      }));
      GHSLoginFragment.n(c).a(new e()
      {
        public void a(GHSIPastOrderListDataModel paramAnonymousGHSIPastOrderListDataModel)
        {
          paramAnonymousGHSIPastOrderListDataModel = com.grubhub.AppBaseLibrary.android.utils.d.a(paramAnonymousGHSIPastOrderListDataModel.getPastOrders(), null);
          if ((paramAnonymousGHSIPastOrderListDataModel != null) && (!paramAnonymousGHSIPastOrderListDataModel.isEmpty()))
          {
            GHSLoginFragment.a(c, new com.grubhub.AppBaseLibrary.android.dataServices.a.h.b(b, paramAnonymousGHSIPastOrderListDataModel, true, null, new i()
            {
              public void a()
              {
                GHSLoginFragment.h(c)[4] = 1;
                GHSLoginFragment.a(c, null);
                GHSLoginFragment.i(c);
              }
            }));
            GHSLoginFragment.m(c).a();
            return;
          }
          GHSLoginFragment.h(c)[4] = 1;
          GHSLoginFragment.i(c);
        }
      });
      GHSLoginFragment.n(c).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          GHSLoginFragment.h(c)[4] = 1;
          GHSLoginFragment.i(c);
        }
      });
      GHSLoginFragment.n(c).a();
    }
    do
    {
      return;
      paramGHSIUserAuthDataModel = c.getActivity();
    } while (paramGHSIUserAuthDataModel == null);
    com.grubhub.AppBaseLibrary.android.c.a(paramGHSIUserAuthDataModel, 2131231398, 2131231535, 2131231717, 0, 0, null);
    GHSLoginFragment.a(c, true);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSLoginFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */