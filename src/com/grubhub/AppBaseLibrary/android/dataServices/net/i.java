package com.grubhub.AppBaseLibrary.android.dataServices.net;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.RequestFuture;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSPreferences;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSIAutoCompleteDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSOrderReviewCheckDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPaymentTokenEnum;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSReorderDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2ErrorMapper;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2SavedAddressWrapperDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2UserAuthDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2UserAuthDTO.GHSClaim;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2UserAuthDTO.GHSCredential;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2UserAuthDTO.GHSSession;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.TipTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICheckoutResponse;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeletedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryLookupDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGetPaymentsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMenuItemUpdateModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMessage;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderStatus;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentResourceCreatedDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentTokenModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPickupInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSITokenizeCreditCardDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel.GHSISession;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserCartsDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites.GHSIFavoriteListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyAccessModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyStatusModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.aa;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ab;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ac;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ad;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ae;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.af;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ag;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ah;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ai;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.aj;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ak;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.al;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.am;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.an;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ao;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ap;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.aq;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ar;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.as;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.at;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.au;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.av;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.aw;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ay;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.az;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ba;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bb;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bc;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bd;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.be;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bf;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bg;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bh;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bi;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bj;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bk;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bl;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bm;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bn;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bo;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bp;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bq;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.br;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bs;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bt;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bu;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bv;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bw;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bx;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.by;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bz;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ca;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cb;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cc;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cd;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ce;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cf;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cg;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ch;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ci;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cj;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ck;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cl;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cm;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cn;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.co;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cp;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cq;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cr;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cs;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ct;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cu;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cv;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cw;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cx;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cy;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cz;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.da;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.db;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.h;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.m;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.n;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.o;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.p;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.q;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.r;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.s;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.t;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.u;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.v;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.w;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.x;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.y;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.z;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class i
  extends a
{
  private static final String i = i.class.getSimpleName();
  private static i j;
  private String k;
  private String l;
  private String m;
  private String n;
  private String o;
  private String p;
  
  private i(Context paramContext)
  {
    super(paramContext);
    c = paramContext.getResources().getString(2131231023);
    d = paramContext.getResources().getString(2131231022);
    a(paramContext.getResources().getBoolean(2131361799));
    f = "V2";
  }
  
  private d a(final String paramString, final f paramf, final boolean paramBoolean1, final d paramd, final boolean paramBoolean2)
  {
    new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        if (!a.b(paramAnonymousb)) {
          V2ErrorMapper.mapToAppError(paramString, paramAnonymousb);
        }
        if (a(paramAnonymousb)) {
          if ((paramf == f.USER) || (paramf == f.USER_WHEN_LOGGED_IN)) {
            new c(i.this, paramAnonymousb).a(b, paramd, paramf, paramBoolean1, paramBoolean2);
          }
        }
        while (paramd == null)
        {
          return;
          new c(i.this, paramAnonymousb).a(b, paramd, f.ANONYMOUS_USER);
          return;
        }
        paramd.a(paramAnonymousb);
      }
    };
  }
  
  private <T> T a(String paramString, j<T> paramj)
  {
    if (paramj == null) {
      return null;
    }
    Object localObject1 = com.grubhub.AppBaseLibrary.android.utils.a.a.b(b);
    final Object localObject2 = new Date();
    GHSIUserAuthDataModel localGHSIUserAuthDataModel = b();
    if ((com.grubhub.AppBaseLibrary.android.utils.f.a((String)localObject1)) && (d()) && (com.grubhub.AppBaseLibrary.android.utils.a.a.a(localGHSIUserAuthDataModel.getSession(), (Date)localObject2)))
    {
      localObject1 = new com.grubhub.AppBaseLibrary.android.dataServices.a.a.c(b, localGHSIUserAuthDataModel.getRefreshToken(), null, null);
      localObject2 = new CountDownLatch(1);
      ((com.grubhub.AppBaseLibrary.android.dataServices.a.a.c)localObject1).a(new e()
      {
        public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
        {
          localObject2.countDown();
        }
      });
      ((com.grubhub.AppBaseLibrary.android.dataServices.a.a.c)localObject1).a(new d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          localObject2.countDown();
        }
      });
      ((com.grubhub.AppBaseLibrary.android.dataServices.a.a.c)localObject1).a();
      try
      {
        ((CountDownLatch)localObject2).await(g, TimeUnit.MILLISECONDS);
        localObject1 = com.grubhub.AppBaseLibrary.android.utils.a.a.d(b);
        if (com.grubhub.AppBaseLibrary.android.utils.f.a((String)localObject1))
        {
          a(paramString, f.USER, 0, "Auth refresh complete, null access token.");
          return null;
        }
      }
      catch (InterruptedException paramj)
      {
        a(paramString, f.USER, 0, paramj.getLocalizedMessage());
        return null;
      }
      paramj.a((String)localObject1);
      return (T)paramj.call();
    }
    paramj.a((String)localObject1);
    return (T)paramj.call();
  }
  
  private void a(final String paramString, final com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramf, final d paramd)
  {
    if (paramf == null) {
      return;
    }
    Object localObject = com.grubhub.AppBaseLibrary.android.utils.a.a.b(b);
    Date localDate = new Date();
    GHSIUserAuthDataModel localGHSIUserAuthDataModel = b();
    if ((com.grubhub.AppBaseLibrary.android.utils.f.a((String)localObject)) && (d()) && (com.grubhub.AppBaseLibrary.android.utils.a.a.a(localGHSIUserAuthDataModel.getSession(), localDate)))
    {
      localObject = new com.grubhub.AppBaseLibrary.android.dataServices.a.a.c(b, localGHSIUserAuthDataModel.getRefreshToken(), null, null);
      ((com.grubhub.AppBaseLibrary.android.dataServices.a.a.c)localObject).a(new e()
      {
        public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
        {
          paramf.a(com.grubhub.AppBaseLibrary.android.utils.a.a.b(b));
          a(paramf);
        }
      });
      ((com.grubhub.AppBaseLibrary.android.dataServices.a.a.c)localObject).a(new d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          a(paramString, f.USER, paramAnonymousb.a(), paramAnonymousb.getLocalizedMessage());
          if (paramd != null) {
            paramd.a(paramAnonymousb);
          }
        }
      });
      ((com.grubhub.AppBaseLibrary.android.dataServices.a.a.c)localObject).a();
      return;
    }
    paramf.a((String)localObject);
    a(paramf);
  }
  
  public static i b(Context paramContext)
  {
    if (j == null) {
      j = new i(paramContext);
    }
    if (GHSApplication.u())
    {
      paramContext = GHSPreferences.a();
      if (paramContext != null)
      {
        j.a(paramContext.a());
        j.a(paramContext.e());
        j.b(paramContext.d());
      }
    }
    return j;
  }
  
  private <T> T b(String paramString, j<T> paramj)
  {
    if (paramj == null) {
      return null;
    }
    Object localObject1 = com.grubhub.AppBaseLibrary.android.utils.a.a.d(b);
    if (com.grubhub.AppBaseLibrary.android.utils.f.a((String)localObject1))
    {
      localObject1 = new Date();
      final Object localObject3 = GHSApplication.d(b);
      Object localObject2 = f.ANONYMOUS_USER;
      if ((d()) && (com.grubhub.AppBaseLibrary.android.utils.a.a.a(((GHSIUserAuthDataModel)localObject3).getSession(), (Date)localObject1)))
      {
        localObject2 = new com.grubhub.AppBaseLibrary.android.dataServices.a.a.c(b, ((GHSIUserAuthDataModel)localObject3).getSession().getRefresh_token(), null, null);
        localObject1 = f.USER;
        localObject3 = new CountDownLatch(1);
        ((com.grubhub.AppBaseLibrary.android.dataServices.a.a)localObject2).a(new e()
        {
          public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
          {
            localObject3.countDown();
          }
        });
        ((com.grubhub.AppBaseLibrary.android.dataServices.a.a)localObject2).a(new d()
        {
          public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
          {
            localObject3.countDown();
          }
        });
        ((com.grubhub.AppBaseLibrary.android.dataServices.a.a)localObject2).a();
      }
      try
      {
        ((CountDownLatch)localObject3).await(g, TimeUnit.MILLISECONDS);
        localObject2 = com.grubhub.AppBaseLibrary.android.utils.a.a.d(b);
        if (!com.grubhub.AppBaseLibrary.android.utils.f.a((String)localObject2)) {
          break label264;
        }
        a(paramString, (f)localObject1, 0, "Auth refresh complete, null access token.");
        return null;
      }
      catch (InterruptedException paramj)
      {
        a(paramString, (f)localObject1, 0, paramj.getLocalizedMessage());
        return null;
      }
      localObject3 = GHSApplication.c(b);
      if ((localObject3 != null) && (com.grubhub.AppBaseLibrary.android.utils.a.a.a(((GHSIUserAuthDataModel)localObject3).getSession(), (Date)localObject1))) {}
      for (localObject1 = ((GHSIUserAuthDataModel)localObject3).getRefreshToken();; localObject1 = null)
      {
        localObject3 = new com.grubhub.AppBaseLibrary.android.dataServices.a.a.d(b, (String)localObject1, null, null);
        localObject1 = localObject2;
        localObject2 = localObject3;
        break;
      }
      label264:
      paramj.a((String)localObject2);
      return (T)paramj.call();
    }
    paramj.a((String)localObject1);
    return (T)paramj.call();
  }
  
  private void b(final String paramString, final com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramf, final d paramd)
  {
    if (paramf == null) {
      return;
    }
    final Object localObject = com.grubhub.AppBaseLibrary.android.utils.a.a.d(b);
    if (com.grubhub.AppBaseLibrary.android.utils.f.a((String)localObject))
    {
      localObject = new Date();
      GHSIUserAuthDataModel localGHSIUserAuthDataModel = GHSApplication.d(b);
      if ((d()) && (com.grubhub.AppBaseLibrary.android.utils.a.a.a(localGHSIUserAuthDataModel.getSession(), (Date)localObject)))
      {
        localObject = new com.grubhub.AppBaseLibrary.android.dataServices.a.a.c(b, localGHSIUserAuthDataModel.getRefreshToken(), null, null);
        ((com.grubhub.AppBaseLibrary.android.dataServices.a.a)localObject).a(new e()
        {
          public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
          {
            paramf.a(com.grubhub.AppBaseLibrary.android.utils.a.a.d(b));
            a(paramf);
          }
        });
        ((com.grubhub.AppBaseLibrary.android.dataServices.a.a)localObject).a(new d()
        {
          public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
          {
            f localf = f.ANONYMOUS_USER;
            if ((localObject instanceof com.grubhub.AppBaseLibrary.android.dataServices.a.a.c)) {
              localf = f.USER;
            }
            a(paramString, localf, paramAnonymousb.a(), paramAnonymousb.getLocalizedMessage());
            if (paramd != null) {
              paramd.a(paramAnonymousb);
            }
          }
        });
        ((com.grubhub.AppBaseLibrary.android.dataServices.a.a)localObject).a();
        return;
      }
      localGHSIUserAuthDataModel = GHSApplication.c(b);
      if ((localGHSIUserAuthDataModel != null) && (com.grubhub.AppBaseLibrary.android.utils.a.a.a(localGHSIUserAuthDataModel.getSession(), (Date)localObject))) {}
      for (localObject = localGHSIUserAuthDataModel.getRefreshToken();; localObject = null)
      {
        localObject = new com.grubhub.AppBaseLibrary.android.dataServices.a.a.d(b, (String)localObject, null, null);
        break;
      }
    }
    paramf.a((String)localObject);
    a(paramf);
  }
  
  public ArrayList<String> a(String paramString, Double paramDouble1, Double paramDouble2)
  {
    ((r)((r)((r)((r)((r)new r(b).c(c)).d(n)).a(g)).b("com.grubhub.AppBaseLibrary.AUTOCOMPLETE_ADDRESS_TAG")).e(paramString).a(paramDouble1).b(paramDouble2).a(new q()
    {
      public ArrayList<String> a(final com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf, final RequestFuture<ArrayList<String>> paramAnonymousRequestFuture, final int paramAnonymousInt)
      {
        paramAnonymousf = new j(paramAnonymousf, paramAnonymousRequestFuture)
        {
          public ArrayList<String> a()
          {
            ArrayList localArrayList1 = new ArrayList();
            try
            {
              if (com.grubhub.AppBaseLibrary.android.utils.f.b(e)) {
                paramAnonymousf.a(e);
              }
              a(paramAnonymousf);
              ArrayList localArrayList2 = (ArrayList)paramAnonymousRequestFuture.get(paramAnonymousInt, TimeUnit.MILLISECONDS);
              if (localArrayList2 != null) {
                localArrayList1.addAll(localArrayList2);
              }
            }
            catch (Exception localException)
            {
              com.grubhub.AppBaseLibrary.android.b.b localb;
              do
              {
                do
                {
                  com.grubhub.AppBaseLibrary.android.utils.e.a.b(i.e(), localException.getMessage());
                } while (!(localException.getCause() instanceof VolleyError));
                localb = new com.grubhub.AppBaseLibrary.android.b.b((VolleyError)localException.getCause());
              } while (!"AuthFailureError".equals(localb.b()));
              new c(i.this, localb).a(b, null, f.ANONYMOUS_USER);
            }
            return localArrayList1;
            return localArrayList1;
          }
        };
        return (ArrayList)i.a(i.this, "autoCompleteAddress", paramAnonymousf);
      }
    })).b().h();
  }
  
  public ArrayList<GHSIOrderReviewDataModel> a(ArrayList<GHSOrderReviewCheckDataModel> paramArrayList)
  {
    ((cy)((cy)((cy)((cy)new cy(b).c(c)).a(g)).b("com.grubhub.AppBaseLibrary.VALIDATE_ORDERS_REVIEWED_TAG")).a(paramArrayList).a(new cz()
    {
      public ArrayList<GHSIOrderReviewDataModel> a(final com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf, final RequestFuture<ArrayList<GHSIOrderReviewDataModel>> paramAnonymousRequestFuture, final int paramAnonymousInt)
      {
        paramAnonymousf = new j(paramAnonymousf, paramAnonymousRequestFuture)
        {
          public ArrayList<GHSIOrderReviewDataModel> a()
          {
            try
            {
              if (com.grubhub.AppBaseLibrary.android.utils.f.b(e)) {
                paramAnonymousf.a(e);
              }
              a(paramAnonymousf);
              ArrayList localArrayList = (ArrayList)paramAnonymousRequestFuture.get(paramAnonymousInt, TimeUnit.MILLISECONDS);
              return localArrayList;
            }
            catch (Exception localException)
            {
              com.grubhub.AppBaseLibrary.android.utils.e.a.b(i.e(), localException.getMessage());
              if ((localException.getCause() instanceof VolleyError))
              {
                com.grubhub.AppBaseLibrary.android.b.b localb = new com.grubhub.AppBaseLibrary.android.b.b((VolleyError)localException.getCause());
                if ("AuthFailureError".equals(localb.b())) {
                  new c(i.this, localb).a(b, null, f.USER, false, false);
                }
              }
            }
            return null;
          }
        };
        return (ArrayList)i.b(i.this, "validateOrdersReviewedSync", paramAnonymousf);
      }
    })).b().i();
  }
  
  public void a(double paramDouble1, double paramDouble2, e<GHSIAddressDataModel> parame, final d paramd, String paramString)
  {
    ((br)((br)((br)((br)((br)((br)((br)new br(b).a(Double.valueOf(paramDouble1)).b(Double.valueOf(paramDouble2)).c(c)).d(n)).b(paramString)).a(g)).a(parame)).a(a("AddressGeocoding", f.ANONYMOUS_USER, false, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.a(i.this, "lookupAddressFromCoordinate", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(GHSFilterSortCriteria paramGHSFilterSortCriteria, int paramInt1, int paramInt2, String paramString1, e<GHSIRestaurantListDataModel> parame, final d paramd, String paramString2)
  {
    ((bj)((bj)((bj)((bj)((bj)((bj)((bj)new bj(b).a(paramGHSFilterSortCriteria).b(paramInt1).c(paramInt2).e(paramString1).c(c)).d(k)).b(paramString2)).a(g)).a(parame)).a(a("RestaurantSearch", f.ANONYMOUS_USER, false, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.a(i.this, "getRestaurantSearchResults", paramAnonymousf, paramd);
        return null;
      }
    })).b().h();
  }
  
  public void a(GHSPaymentTokenEnum paramGHSPaymentTokenEnum, e<GHSIPaymentTokenModel> parame, final d paramd, String paramString)
  {
    ((bb)((bb)((bb)((bb)((bb)((bb)new bb(b).c(c)).a(paramGHSPaymentTokenEnum).d(p)).b(paramString)).a(parame)).a(a("GetPaymentsToken", f.USER, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "getPaymentToken", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(GHSReorderDataModel paramGHSReorderDataModel, e<GHSICartDataModel> parame, final d paramd, String paramString)
  {
    ca localca = new ca(b);
    if (paramGHSReorderDataModel != null) {}
    for (paramGHSReorderDataModel = paramGHSReorderDataModel.getOrderId();; paramGHSReorderDataModel = null)
    {
      ((ca)((ca)((ca)((ca)((ca)((ca)((ca)localca.e(paramGHSReorderDataModel).f(e).c(c)).d(o)).b(paramString)).a(g)).a(parame)).a(a("ReorderPastOrder", f.USER, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
      {
        public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
        {
          i.b(i.this, "reorderPastOrder", paramAnonymousf, paramd);
          return null;
        }
      })).b().a();
      return;
    }
  }
  
  public void a(GHSIYummyRummyAccessModel paramGHSIYummyRummyAccessModel, e<GHSIYummyRummyModel> parame, final d paramd, String paramString)
  {
    ((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a.b)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a.b)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a.b)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a.b)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a.b)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a.b)new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a.b(b).c(c)).a(g)).b(paramString)).a(paramGHSIYummyRummyAccessModel).a(parame)).a(a("YummyRummyAccess", f.USER, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "accessYummyRummy", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(Long paramLong, e<GHSICartDataModel> parame, final d paramd, String paramString)
  {
    ((v)((v)((v)((v)((v)((v)((v)new v(b).c(c)).e(e).a(paramLong).d(o)).b(paramString)).a(g)).a(parame)).a(a("CreateNewCart", f.USER_WHEN_LOGGED_IN, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.a(i.this, "createCart", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(String paramString1, float paramFloat, GHSICartDataModel.TipTypes paramTipTypes, e<GHSICartDataModel> parame, final d paramd, String paramString2)
  {
    ((cm)((cm)((cm)((cm)((cm)((cm)((cm)new cm(b).c(c)).e(paramString1).a(paramFloat).a(paramTipTypes).d(o)).b(paramString2)).a(g)).a(parame)).a(a("SetTipInfo", f.USER_WHEN_LOGGED_IN, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.a(i.this, "setTipData", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(String paramString1, int paramInt1, int paramInt2, String paramString2, e<GHSIReviewsDataModel> parame, final d paramd, String paramString3)
  {
    ((bh)((bh)((bh)((bh)((bh)((bh)new bh(b).c(c)).a(g)).b(paramString3)).e(paramString1).b(paramInt1).f(paramString2).a(parame)).a(a("RestaurantContent", f.ANONYMOUS_USER, false, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.a(i.this, "getRestaurantReviews", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(String paramString1, long paramLong, e<GHSICartDataModel> parame, final d paramd, String paramString2)
  {
    ((cq)((cq)((cq)((cq)((cq)((cq)((cq)new cq(b).c(c)).d(o)).e(paramString1).a(paramLong).b(paramString2)).a(g)).a(parame)).a(a("UpdateCart", f.USER, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "updateCart", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(String paramString1, GHSIAddressDataModel paramGHSIAddressDataModel, final e<ArrayList<GHSIAddressDataModel>> parame, final d paramd, String paramString2)
  {
    ((o)((o)((o)((o)((o)((o)new o(b).c(c)).e(paramString1).a(paramGHSIAddressDataModel).a(g)).b(paramString2)).a(new e()
    {
      public void a(V2SavedAddressWrapperDTO paramAnonymousV2SavedAddressWrapperDTO)
      {
        ArrayList localArrayList = null;
        if (paramAnonymousV2SavedAddressWrapperDTO != null) {
          localArrayList = paramAnonymousV2SavedAddressWrapperDTO.getAddressList();
        }
        if (parame != null) {
          parame.onResponse(localArrayList);
        }
      }
    })).a(a("AddSavedAddress", f.USER, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "addSavedAddress", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(String paramString1, GHSICartPaymentDataModel paramGHSICartPaymentDataModel, e<GHSICartDataModel> parame, final d paramd, String paramString2)
  {
    ((m)((m)((m)((m)((m)((m)new m(b).c(c)).e(paramString1).a(paramGHSICartPaymentDataModel).d(o)).b(paramString2)).a(parame)).a(a("AddPaymentToCart", f.USER, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "addPaymentToCart", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(String paramString1, GHSIMenuItemUpdateModel paramGHSIMenuItemUpdateModel, e<GHSICartDataModel> parame, final d paramd, String paramString2)
  {
    ((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.k)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.k)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.k)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.k)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.k)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.k)new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.k(b).c(c)).e(paramString1).a(paramGHSIMenuItemUpdateModel).d(o)).b(paramString2)).a(parame)).a(a("AddMenuItemToCart", f.USER_WHEN_LOGGED_IN, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.a(i.this, "addMenuItemToCart", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(String paramString1, e<ArrayList<GHSIAddressDataModel>> parame, final d paramd, String paramString2)
  {
    ((bt)((bt)((bt)((bt)((bt)((bt)((bt)new bt(b).e(paramString1).c(c)).d(n)).b(paramString2)).a(g)).a(parame)).a(a("AddressGeocoding", f.ANONYMOUS_USER, false, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.a(i.this, "lookupAddressFromString", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(String paramString1, com.grubhub.AppBaseLibrary.android.order.g paramg, String paramString2, e<ArrayList<GHSIOrderReviewSurveyDataModel>> parame, final d paramd, String paramString3)
  {
    ((az)((az)((az)((az)((az)((az)new az(b).c(c)).a(g)).b(paramString3)).e(paramString1).a(paramg).f(paramString2).a(parame)).a(a("GetOrderReviewSurvey", f.USER, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "getOrderReviewSurvey", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(String paramString1, String paramString2, GHSIAddressDataModel paramGHSIAddressDataModel, final e<ArrayList<GHSIAddressDataModel>> parame, final d paramd, String paramString3)
  {
    ((cu)((cu)((cu)((cu)((cu)((cu)new cu(b).c(c)).e(paramString1).f(paramString2).a(paramGHSIAddressDataModel).a(g)).b(paramString3)).a(new e()
    {
      public void a(V2SavedAddressWrapperDTO paramAnonymousV2SavedAddressWrapperDTO)
      {
        ArrayList localArrayList = null;
        if (paramAnonymousV2SavedAddressWrapperDTO != null) {
          localArrayList = paramAnonymousV2SavedAddressWrapperDTO.getAddressList();
        }
        if (parame != null) {
          parame.onResponse(localArrayList);
        }
      }
    })).a(a("UpdateSavedAddress", f.USER, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "updatedSavedAddress", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(String paramString1, String paramString2, GHSIMenuItemUpdateModel paramGHSIMenuItemUpdateModel, e<GHSICartDataModel> parame, final d paramd, String paramString3)
  {
    ((cs)((cs)((cs)((cs)((cs)((cs)new cs(b).c(c)).e(paramString1).f(paramString2).a(paramGHSIMenuItemUpdateModel).d(o)).b(paramString3)).a(parame)).a(a("UpdateMenuItemToCart", f.USER_WHEN_LOGGED_IN, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.a(i.this, "updateMenuItemInCart", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(String paramString1, String paramString2, e<GHSIFoodMenuDataModel.GHSIMenuItem> parame, final d paramd, String paramString3)
  {
    ((as)((as)((as)((as)((as)((as)((as)new as(b).e(paramString1).f(paramString2).c(c)).d(l)).b(paramString3)).a(g)).a(parame)).a(a("RestaurantContent", f.ANONYMOUS_USER, false, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.a(i.this, "getMenuItem", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(String paramString1, String paramString2, String paramString3, e<GHSICartDataModel> parame, final d paramd, String paramString4)
  {
    ((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.g)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.g)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.g)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.g)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.g)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.g)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.g)new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.g(b).c(c)).e(paramString1).f(paramString2).g(paramString3).d(o)).b(paramString4)).a(g)).a(parame)).a(a("AddCouponToCart", f.USER_WHEN_LOGGED_IN, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.a(i.this, "addCoupon", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(String paramString1, String paramString2, String paramString3, com.grubhub.AppBaseLibrary.android.order.l paraml, Long paramLong, e<GHSIRestaurantDataModel> parame, final d paramd, String paramString4)
  {
    ((bd)((bd)((bd)((bd)((bd)((bd)((bd)new bd(b).e(paramString1).f(paramString2).g(paramString3).a(paraml).a(paramLong).c(c)).d(l)).b(paramString4)).a(g)).a(parame)).a(a("RestaurantContent", f.ANONYMOUS_USER, false, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.a(i.this, "getRestaurantAndFoodMenu", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(final String paramString1, final String paramString2, String paramString3, String paramString4, final e<GHSIUserAuthDataModel> parame, final d paramd, String paramString5)
  {
    try
    {
      String str = com.grubhub.AppBaseLibrary.android.utils.a.a.e(b);
      HashMap localHashMap = new HashMap();
      localHashMap.put("brand", e);
      localHashMap.put("client_id", d);
      localHashMap.put("email", paramString1);
      localHashMap.put("password", paramString2);
      if (!TextUtils.isEmpty(paramString3)) {
        localHashMap.put("first_name", paramString3);
      }
      if (!TextUtils.isEmpty(paramString4)) {
        localHashMap.put("last_name", paramString4);
      }
      paramString3 = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(c, m);
      paramString3.a("credentials");
      paramString1 = new com.grubhub.AppBaseLibrary.android.dataServices.net.b.d(paramString3.toString(), localHashMap, new k(), V2UserAuthDTO.class, g, new e()
      {
        public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
        {
          if ((paramAnonymousGHSIUserAuthDataModel != null) && (paramString1.toLowerCase().equals(paramAnonymousGHSIUserAuthDataModel.getEmail().toLowerCase())) && (!TextUtils.isEmpty(paramAnonymousGHSIUserAuthDataModel.getToken())))
          {
            paramAnonymousGHSIUserAuthDataModel.setPassword(paramString2);
            if (parame != null) {
              parame.onResponse(paramAnonymousGHSIUserAuthDataModel);
            }
          }
          while (paramd == null) {
            return;
          }
          paramd.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
        }
      }, a("CreateAccount", f.ANONYMOUS_USER, false, paramd, false));
      paramString1.a(str);
      paramString1.setTag(paramString5);
      a(paramString1);
      return;
    }
    catch (Exception paramString1)
    {
      do
      {
        com.grubhub.AppBaseLibrary.android.utils.e.a.b(i, paramString1.getMessage());
      } while (paramd == null);
      paramd.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
    }
  }
  
  public void a(String paramString1, final String paramString2, String paramString3, String paramString4, final String paramString5, final e<GHSIUserAuthDataModel> parame, d paramd, String paramString6)
  {
    try
    {
      localGHSIUserAuthDataModel = a(paramd);
      if (localGHSIUserAuthDataModel == null) {
        return;
      }
      str2 = localGHSIUserAuthDataModel.getUdid();
      str1 = localGHSIUserAuthDataModel.getAccessToken();
      if (TextUtils.isEmpty(paramString5)) {
        break label343;
      }
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        GHSIUserAuthDataModel localGHSIUserAuthDataModel;
        String str2;
        String str1;
        HashMap localHashMap;
        com.grubhub.AppBaseLibrary.android.utils.e.a.b(i, paramString1.getMessage());
        if (paramd == null) {
          break;
        }
        paramd.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
        return;
        label343:
        paramString5 = localGHSIUserAuthDataModel.getPassword();
        continue;
        boolean bool = false;
      }
    }
    localHashMap = new HashMap();
    localHashMap.put("brand", e);
    localHashMap.put("client_id", d);
    localHashMap.put("email", localGHSIUserAuthDataModel.getEmail());
    localHashMap.put("password", paramString5);
    if (!TextUtils.isEmpty(paramString3)) {
      localHashMap.put("first_name", paramString3);
    }
    if (!TextUtils.isEmpty(paramString4)) {
      localHashMap.put("last_name", paramString4);
    }
    if (!TextUtils.isEmpty(paramString1)) {
      localHashMap.put("new_email", paramString1);
    }
    if (!TextUtils.isEmpty(paramString2)) {
      localHashMap.put("new_password", paramString2);
    }
    if (!localHashMap.containsKey("new_password"))
    {
      bool = true;
      paramString1 = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(c, m);
      paramString1.a("credentials");
      paramString1.a(str2);
      paramString1 = new com.grubhub.AppBaseLibrary.android.dataServices.net.b.e(paramString1.toString(), localHashMap, new k(), V2UserAuthDTO.class, g, new e()
      {
        public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
        {
          Object localObject = new ArrayList();
          Iterator localIterator = paramAnonymousGHSIUserAuthDataModel.getClaims().iterator();
          while (localIterator.hasNext()) {
            ((ArrayList)localObject).add((V2UserAuthDTO.GHSClaim)localIterator.next());
          }
          localObject = new V2UserAuthDTO((V2UserAuthDTO.GHSCredential)paramAnonymousGHSIUserAuthDataModel.getCredential(), (V2UserAuthDTO.GHSSession)paramAnonymousGHSIUserAuthDataModel.getSession(), (ArrayList)localObject);
          if (!TextUtils.isEmpty(paramString2)) {
            paramAnonymousGHSIUserAuthDataModel.setPassword(paramString2);
          }
          for (;;)
          {
            GHSApplication.a().b().a(paramAnonymousGHSIUserAuthDataModel);
            if (parame != null) {
              parame.onResponse(localObject);
            }
            return;
            paramAnonymousGHSIUserAuthDataModel.setPassword(paramString5);
          }
        }
      }, a("UpdateUserInfo", f.USER, bool, paramd, false));
      paramString1.a(str1);
      paramString1.setTag(paramString6);
      a(paramString1);
      return;
    }
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, boolean paramBoolean, e<GHSITokenizeCreditCardDataModel> parame, final d paramd, String paramString8)
  {
    ((co)((co)((co)((co)((co)new co(b).c(b.getString(2131231027))).e(paramString1).f(paramString2).h(paramString3).i(paramString4).j(paramString5).g(paramString6).k(paramString7).a(paramBoolean).b(paramString8)).a(parame)).a(a("TokenizeCreditCard", f.USER, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "tokenizeCreditCard", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(String paramString1, String paramString2, boolean paramBoolean, GHSPaymentTokenEnum paramGHSPaymentTokenEnum, e<GHSIPaymentResourceCreatedDataModel> parame, final d paramd, String paramString3)
  {
    ((db)((db)((db)((db)((db)((db)new db(b).c(c)).d(p)).e(paramString1).f(paramString2).a(paramBoolean).a(paramGHSPaymentTokenEnum).b(paramString3)).a(parame)).a(a("VaultPayment", f.USER, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "vaultPayment", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(String paramString1, boolean paramBoolean, GHSIDeliveryInfo paramGHSIDeliveryInfo, e<GHSICartDataModel> parame, final d paramd, String paramString2)
  {
    ((cg)((cg)((cg)((cg)((cg)((cg)((cg)new cg(b).c(c)).e(paramString1).a(paramBoolean).a(paramGHSIDeliveryInfo).d(o)).b(paramString2)).a(g)).a(parame)).a(a("SetDeliveryInfo", f.USER_WHEN_LOGGED_IN, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.a(i.this, "setDeliveryData", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(String paramString1, boolean paramBoolean, GHSIPickupInfo paramGHSIPickupInfo, e<GHSICartDataModel> parame, final d paramd, String paramString2)
  {
    ((ck)((ck)((ck)((ck)((ck)((ck)((ck)new ck(b).c(c)).e(paramString1).a(paramBoolean).a(paramGHSIPickupInfo).d(o)).b(paramString2)).a(g)).a(parame)).a(a("SetPickupInfo", f.USER_WHEN_LOGGED_IN, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.a(i.this, "setPickupData", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(String paramString1, boolean paramBoolean, e<GHSIGetPaymentsModel> parame, final d paramd, String paramString2)
  {
    ((bp)((bp)((bp)((bp)((bp)((bp)new bp(b).c(c)).d(p)).e(paramString1).b(paramString2)).a(parame)).a(a("GetVaultedPayments", f.USER, paramBoolean, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "getVaultedPayments", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(String paramString1, boolean paramBoolean1, boolean paramBoolean2, e<GHSIPastOrderListDataModel> parame, final d paramd, String paramString2)
  {
    ((aw)((aw)((aw)((aw)((aw)((aw)new aw(b).c(c)).d(p)).e(paramString1).b(paramString2)).a(parame)).a(a("GetPastOrders", f.USER, paramBoolean1, paramd, paramBoolean2))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "getPastOrders", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(String paramString1, String[] paramArrayOfString, Double paramDouble1, Double paramDouble2, com.grubhub.AppBaseLibrary.android.order.g paramg, com.grubhub.AppBaseLibrary.android.order.l paraml, Long paramLong, e<GHSIAutoCompleteDataModel> parame, final d paramd, String paramString2)
  {
    ((t)((t)((t)((t)((t)((t)((t)new t(b).c(c)).d(k)).a(g)).b(paramString2)).a(parame)).a(paramd)).e(paramString1).a(paramArrayOfString).a(paraml).a(paramLong).a(paramDouble1).b(paramDouble2).a(paramg).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.a(i.this, "autoCompleteSearch", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(ArrayList<String> paramArrayList, String paramString1, String paramString2, e<GHSIRestaurantAvailabilityDataModel> parame, final d paramd, String paramString3)
  {
    ((bf)((bf)((bf)((bf)((bf)((bf)((bf)new bf(b).a(paramArrayList).e(paramString1).f(paramString2).c(c)).d(l)).b(paramString3)).a(g)).a(parame)).a(a("RestaurantAvailability", f.ANONYMOUS_USER, false, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.a(i.this, "getRestaurantAvailability", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(ArrayList<GHSOrderReviewCheckDataModel> paramArrayList, boolean paramBoolean, e<ArrayList<GHSIOrderReviewDataModel>> parame, final d paramd, String paramString)
  {
    ((cw)((cw)((cw)((cw)((cw)((cw)new cw(b).c(c)).a(g)).b(paramString)).a(paramArrayList).a(parame)).a(a("ValidateOrderReviewed", f.USER, paramBoolean, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "validateOrdersReviewedAsync", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      k = "443";
      l = "443";
      m = "443";
      n = "443";
      o = "443";
      p = "443";
      return;
    }
    k = b.getResources().getString(2131231780);
    l = b.getResources().getString(2131231776);
    m = b.getResources().getString(2131231781);
    n = b.getResources().getString(2131231778);
    o = b.getResources().getString(2131231775);
    p = b.getResources().getString(2131231779);
  }
  
  public void a(boolean paramBoolean, e<GHSIUserCartsDataModel> parame, final d paramd, String paramString)
  {
    ((bn)((bn)((bn)((bn)((bn)((bn)((bn)new bn(b).c(c)).d(o)).b(paramString)).a(g)).a(parame)).a(a("GetCarts", f.USER, true, paramd, paramBoolean))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "getCarts", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public boolean a(GHSCreateOrderReviewDataModel paramGHSCreateOrderReviewDataModel)
  {
    ((x)((x)((x)((x)new x(b).c(c)).a(g)).b("com.grubhub.AppBaseLibrary.CREATE_ORDER_REVIEW_TAG")).a(paramGHSCreateOrderReviewDataModel).a(new y()
    {
      public Boolean a(final com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf, final RequestFuture<Void> paramAnonymousRequestFuture, final int paramAnonymousInt)
      {
        paramAnonymousf = new j(paramAnonymousf, paramAnonymousRequestFuture)
        {
          public Boolean a()
          {
            try
            {
              if (com.grubhub.AppBaseLibrary.android.utils.f.b(e)) {
                paramAnonymousf.a(e);
              }
              a(paramAnonymousf);
              paramAnonymousRequestFuture.get(paramAnonymousInt, TimeUnit.MILLISECONDS);
              return Boolean.valueOf(true);
            }
            catch (Exception localException)
            {
              com.grubhub.AppBaseLibrary.android.utils.e.a.b(i.e(), localException.getMessage());
              if ((localException.getCause() instanceof VolleyError))
              {
                com.grubhub.AppBaseLibrary.android.b.b localb = new com.grubhub.AppBaseLibrary.android.b.b((VolleyError)localException.getCause());
                if ("AuthFailureError".equals(localb.b())) {
                  new c(i.this, localb).a(b, null, f.USER, false, false);
                }
              }
            }
            return Boolean.valueOf(false);
          }
        };
        return (Boolean)i.b(i.this, "createOrderReview", paramAnonymousf);
      }
    })).b().i().booleanValue();
  }
  
  public GHSIUserAuthDataModel b()
  {
    return GHSApplication.a().b().N();
  }
  
  public void b(String paramString1, e<GHSIMessage> parame, final d paramd, String paramString2)
  {
    ((au)((au)((au)((au)((au)((au)new au(b).c(b.getString(2131231024))).e(b.getString(2131231025)).f(paramString1).b(paramString2)).a(g)).a(parame)).a(paramd)).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.a(i.this, "getMessages", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void b(String paramString1, final String paramString2, final e<GHSIUserAuthDataModel> parame, d paramd, String paramString3)
  {
    try
    {
      String str = com.grubhub.AppBaseLibrary.android.utils.a.a.e(b);
      HashMap localHashMap = new HashMap();
      localHashMap.put("brand", e);
      localHashMap.put("client_id", d);
      localHashMap.put("email", paramString1);
      localHashMap.put("password", paramString2);
      paramString1 = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(c, m);
      paramString1.a("auth");
      paramString1 = new com.grubhub.AppBaseLibrary.android.dataServices.net.b.d(paramString1.toString(), localHashMap, new k(), V2UserAuthDTO.class, g, new e()
      {
        public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
        {
          paramAnonymousGHSIUserAuthDataModel.setPassword(paramString2);
          if (parame != null) {
            parame.onResponse(paramAnonymousGHSIUserAuthDataModel);
          }
        }
      }, a("Login", f.ANONYMOUS_USER, false, paramd, false));
      paramString1.a(str);
      paramString1.setTag(paramString3);
      a(paramString1);
      return;
    }
    catch (Exception paramString1)
    {
      do
      {
        com.grubhub.AppBaseLibrary.android.utils.e.a.b(i, paramString1.getMessage());
      } while (paramd == null);
      paramd.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
    }
  }
  
  public void b(String paramString1, String paramString2, String paramString3, e<Void> parame, final d paramd, String paramString4)
  {
    ((ci)((ci)((ci)((ci)((ci)((ci)new ci(b).c(c)).d(p)).e(paramString1).g(paramString2).f(paramString3).b(paramString4)).a(parame)).a(a("SetDeviceData", f.USER, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "setPaymentDeviceData", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void b(String paramString1, boolean paramBoolean, final e<ArrayList<GHSIAddressDataModel>> parame, final d paramd, String paramString2)
  {
    ((bl)((bl)((bl)((bl)((bl)((bl)new bl(b).c(c)).e(paramString1).a(g)).b(paramString2)).a(new e()
    {
      public void a(V2SavedAddressWrapperDTO paramAnonymousV2SavedAddressWrapperDTO)
      {
        ArrayList localArrayList = null;
        if (paramAnonymousV2SavedAddressWrapperDTO != null) {
          localArrayList = paramAnonymousV2SavedAddressWrapperDTO.getAddressList();
        }
        if (parame != null) {
          parame.onResponse(localArrayList);
        }
      }
    })).a(a("GetSavedAddresses", f.USER, paramBoolean, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "getSavedAddresses", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void b(String paramString1, boolean paramBoolean1, boolean paramBoolean2, e<GHSIFavoriteListDataModel> parame, final d paramd, String paramString2)
  {
    ((aq)((aq)((aq)((aq)((aq)((aq)new aq(b).c(c)).a(g)).b(paramString2)).e(paramString1).a(parame)).a(a("GetFavorite", f.USER, paramBoolean1, paramd, paramBoolean2))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "getFavoriteRestaurants", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public GHSIUserAuthDataModel c()
  {
    return GHSApplication.a().b().O();
  }
  
  public void c(String paramString1, final e<GHSIUserAuthDataModel> parame, d paramd, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      if (paramd != null) {
        paramd.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
      }
    }
    do
    {
      return;
      String str1 = com.grubhub.AppBaseLibrary.android.utils.a.a.e(b);
      HashMap localHashMap = new HashMap();
      localHashMap.put("refresh_token", paramString1);
      localHashMap.put("brand", e);
      localHashMap.put("client_id", d);
      paramString1 = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(c, m);
      paramString1.a("auth");
      try
      {
        final String str2 = b().getPassword();
        paramString1 = new com.grubhub.AppBaseLibrary.android.dataServices.net.b.d(paramString1.toString(), localHashMap, new k(), V2UserAuthDTO.class, g, new e()
        {
          public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
          {
            paramAnonymousGHSIUserAuthDataModel.setPassword(str2);
            GHSApplication.a().b().a(paramAnonymousGHSIUserAuthDataModel);
            if (parame != null) {
              parame.onResponse(paramAnonymousGHSIUserAuthDataModel);
            }
          }
        }, paramd);
        paramString1.a(str1);
        paramString1.setTag(paramString2);
        a(paramString1);
        return;
      }
      catch (Exception paramString1)
      {
        com.grubhub.AppBaseLibrary.android.utils.e.a.b(i, paramString1.getMessage());
      }
    } while (paramd == null);
    paramd.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
  }
  
  public void c(String paramString1, String paramString2, e<GHSICartDataModel> parame, final d paramd, String paramString3)
  {
    ((ae)((ae)((ae)((ae)((ae)((ae)new ae(b).c(c)).e(paramString1).f(paramString2).d(o)).b(paramString3)).a(parame)).a(a("DeleteMenuItemToCart", f.USER_WHEN_LOGGED_IN, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.a(i.this, "deleteMenuItemInCart", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public boolean c(String paramString)
  {
    ((bx)((bx)((bx)((bx)new bx(b).c(c)).a(g)).b("com.grubhub.AppBaseLibrary.QUIT_ORDER_REVIEW_SURVEY_TAG")).e(paramString).a(new by()
    {
      public Boolean a(final com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf, final RequestFuture<Void> paramAnonymousRequestFuture, final int paramAnonymousInt)
      {
        paramAnonymousf = new j(paramAnonymousf, paramAnonymousRequestFuture)
        {
          public Boolean a()
          {
            try
            {
              if (com.grubhub.AppBaseLibrary.android.utils.f.b(e)) {
                paramAnonymousf.a(e);
              }
              a(paramAnonymousf);
              paramAnonymousRequestFuture.get(paramAnonymousInt, TimeUnit.MILLISECONDS);
              return Boolean.valueOf(true);
            }
            catch (Exception localException)
            {
              com.grubhub.AppBaseLibrary.android.utils.e.a.b(i.e(), localException.getMessage());
              if ((localException.getCause() instanceof VolleyError))
              {
                com.grubhub.AppBaseLibrary.android.b.b localb = new com.grubhub.AppBaseLibrary.android.b.b((VolleyError)localException.getCause());
                if ("AuthFailureError".equals(localb.b())) {
                  new c(i.this, localb).a(b, null, f.USER, false, false);
                }
              }
            }
            return Boolean.valueOf(false);
          }
        };
        return (Boolean)i.b(i.this, "quitOrderReviewSurvey", paramAnonymousf);
      }
    })).b().h().booleanValue();
  }
  
  public void d(String paramString1, final e<GHSIUserAuthDataModel> parame, d paramd, String paramString2)
  {
    String str = com.grubhub.AppBaseLibrary.android.utils.a.a.f(b);
    HashMap localHashMap = new HashMap();
    if (com.grubhub.AppBaseLibrary.android.utils.f.a(paramString1)) {
      localHashMap.put("scope", "anonymous");
    }
    for (;;)
    {
      localHashMap.put("brand", e);
      localHashMap.put("client_id", d);
      paramString1 = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(c, m);
      paramString1.a("auth");
      try
      {
        paramString1 = new com.grubhub.AppBaseLibrary.android.dataServices.net.b.d(paramString1.toString(), localHashMap, new k(), V2UserAuthDTO.class, g, new e()
        {
          public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
          {
            GHSApplication.a().b().b(paramAnonymousGHSIUserAuthDataModel);
            if (parame != null) {
              parame.onResponse(paramAnonymousGHSIUserAuthDataModel);
            }
          }
        }, paramd);
        paramString1.a(str);
        paramString1.setTag(paramString2);
        a(paramString1);
        return;
        localHashMap.put("refresh_token", paramString1);
      }
      catch (Exception paramString1)
      {
        do
        {
          com.grubhub.AppBaseLibrary.android.utils.e.a.b(i, paramString1.getMessage());
        } while (paramd == null);
        paramd.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
      }
    }
  }
  
  public void d(String paramString1, String paramString2, e<GHSICartDataModel> parame, final d paramd, String paramString3)
  {
    ((ag)((ag)((ag)((ag)((ag)((ag)new ag(b).c(c)).e(paramString1).f(paramString2).d(o)).b(paramString3)).a(parame)).a(a("DeletePaymentFromCart", f.USER, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "deletePaymentFromCart", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public boolean d()
  {
    return (b() != null) && (!TextUtils.isEmpty(b().getToken())) && (!TextUtils.isEmpty(b().getEmail()));
  }
  
  public void e(String paramString1, e<Void> parame, final d paramd, String paramString2)
  {
    ((aa)((aa)((aa)((aa)((aa)((aa)((aa)new aa(b).c(c)).d(o)).e(paramString1).b(paramString2)).a(g)).a(parame)).a(a("DeleteCart", f.USER, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "deleteCart", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void e(String paramString1, String paramString2, e<GHSICheckoutResponse> parame, final d paramd, String paramString3)
  {
    ((bv)((bv)((bv)((bv)((bv)((bv)((bv)new bv(b).c(c)).e(paramString1).f(paramString2).d(o)).b(paramString3)).a(g)).a(parame)).a(a("PlaceOrder", f.USER, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "placeOrder", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void f(String paramString1, e<GHSICartDataModel> parame, final d paramd, String paramString2)
  {
    ((ao)((ao)((ao)((ao)((ao)((ao)((ao)new ao(b).c(c)).e(paramString1).d(o)).b(paramString2)).a(g)).a(parame)).a(a("GetCart", f.USER_WHEN_LOGGED_IN, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.a(i.this, "getCart", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void f(String paramString1, String paramString2, e<GHSICartDataModel> parame, final d paramd, String paramString3)
  {
    ((ac)((ac)((ac)((ac)((ac)((ac)new ac(b).c(c)).e(paramString1).f(paramString2).d(o)).b(paramString3)).a(parame)).a(a("DeleteCouponFromCart", f.USER_WHEN_LOGGED_IN, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.a(i.this, "deleteCouponFromCart", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void g(String paramString1, e<GHSIBillModel> parame, final d paramd, String paramString2)
  {
    ((am)((am)((am)((am)((am)((am)((am)new am(b).c(c)).e(paramString1).d(o)).b(paramString2)).a(g)).a(parame)).a(a("GetBill", f.USER_WHEN_LOGGED_IN, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.a(i.this, "getBill", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void g(String paramString1, String paramString2, e<GHSIDeletedPaymentModel> parame, final d paramd, String paramString3)
  {
    ((ai)((ai)((ai)((ai)((ai)((ai)new ai(b).c(c)).d(p)).e(paramString1).f(paramString2).b(paramString3)).a(parame)).a(a("DeleteVaultedPayment", f.USER, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "deleteVaultedPayment", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void h(String paramString1, e<GHSIYummyRummyStatusModel> parame, d paramd, String paramString2)
  {
    ((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a.d)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a.d)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a.d)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a.d)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a.d)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a.d)new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.a.d(b).c(paramString1)).a(g)).b(paramString2)).a(parame)).a(a("YummyRummyStatusCheck", f.USER, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        a(paramAnonymousf);
        return null;
      }
    })).b().a();
  }
  
  public void h(String paramString1, String paramString2, final e<ArrayList<GHSIAddressDataModel>> parame, final d paramd, String paramString3)
  {
    ((ce)((ce)((ce)((ce)((ce)((ce)new ce(b).c(c)).e(paramString1).f(paramString2).a(g)).b(paramString3)).a(new e()
    {
      public void a(V2SavedAddressWrapperDTO paramAnonymousV2SavedAddressWrapperDTO)
      {
        ArrayList localArrayList = null;
        if (paramAnonymousV2SavedAddressWrapperDTO != null) {
          localArrayList = paramAnonymousV2SavedAddressWrapperDTO.getAddressList();
        }
        if (parame != null) {
          parame.onResponse(localArrayList);
        }
      }
    })).a(a("RemoveSavedAddress", f.USER, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "removeSavedAddress", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void i(String paramString1, e<GHSIDeliveryLookupDataModel> parame, final d paramd, String paramString2)
  {
    ((ak)((ak)((ak)((ak)((ak)((ak)new ak(b).c(c)).a(g)).b(paramString2)).e(paramString1).a(parame)).a(a("DeliveryLookup", f.USER, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "lookupDeliveries", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void i(String paramString1, String paramString2, e<GHSIOrderStatus> parame, d paramd, String paramString3)
  {
    g.b(b).i(paramString1, paramString2, parame, paramd, paramString3);
  }
  
  public void j(String paramString1, String paramString2, e<GHSIFavoriteListDataModel> parame, final d paramd, String paramString3)
  {
    ((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.i)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.i)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.i)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.i)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.i)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.i)new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.i(b).c(c)).a(g)).b(paramString3)).e(paramString1).f(paramString2).a(parame)).a(a("AddFavorite", f.USER, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "addFavoriteRestaurant", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
  
  public void k(String paramString1, String paramString2, e<GHSIFavoriteListDataModel> parame, final d paramd, String paramString3)
  {
    ((cc)((cc)((cc)((cc)((cc)((cc)new cc(b).c(c)).a(g)).b(paramString3)).e(paramString1).f(paramString2).a(parame)).a(a("RemoveFavorite", f.USER, true, paramd, false))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        i.b(i.this, "removeFavoriteRestaurant", paramAnonymousf, paramd);
        return null;
      }
    })).b().a();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */