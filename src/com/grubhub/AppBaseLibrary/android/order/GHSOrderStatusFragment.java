package com.grubhub.AppBaseLibrary.android.order;

import android.app.ActionBar;
import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.q;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v4.widget.at;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.GHSMainActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderStatus;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.order.receipt.GHSReceiptActivity;
import com.grubhub.AppBaseLibrary.android.order.receipt.a;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import java.util.ArrayList;
import java.util.Collections;

public class GHSOrderStatusFragment
  extends Fragment
{
  private static final String a = GHSOrderStatusFragment.class.getSimpleName();
  private String b;
  private GHSIPastOrderListDataModel c;
  private ArrayList<GHSIPastOrderDataModel> d;
  private ArrayList<c> e;
  private boolean f;
  private boolean g;
  private boolean h;
  private View.OnClickListener i;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.e.c j;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.e.b k;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.c l;
  private e m;
  private ListView n;
  private View o;
  private SwipeRefreshLayout p;
  private GHSLoadingViewFlipper q;
  
  private GHSICartPaymentDataModel.PaymentTypes a(GHSICartDataModel paramGHSICartDataModel)
  {
    if (paramGHSICartDataModel == null) {
      return null;
    }
    return GHSICartPaymentDataModel.PaymentTypes.fromString(paramGHSICartDataModel.getOrderPaymentType());
  }
  
  public static GHSOrderStatusFragment a()
  {
    return new GHSOrderStatusFragment();
  }
  
  private void a(int paramInt)
  {
    if ((d != null) && (paramInt < d.size()))
    {
      h = false;
      g = false;
      GHSIPastOrderDataModel localGHSIPastOrderDataModel = (GHSIPastOrderDataModel)d.get(paramInt);
      if (System.currentTimeMillis() - localGHSIPastOrderDataModel.getTimePlacedMillis() <= 86400000L)
      {
        a(localGHSIPastOrderDataModel, paramInt);
        return;
      }
      a(paramInt + 1);
      return;
    }
    g = true;
    b();
  }
  
  private void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    q localq = getActivity();
    if (localq != null)
    {
      if (paramb == null) {
        break label128;
      }
      String str = paramb.getLocalizedMessage();
      o.findViewById(2131690264).setVisibility(8);
      ((TextView)o.findViewById(2131690263)).setText(paramb.getLocalizedMessage());
      i = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          GHSOrderStatusFragment.a(GHSOrderStatusFragment.this, false);
        }
      };
      if (paramb.d()) {
        com.grubhub.AppBaseLibrary.android.c.a(localq, paramb.f(), str, paramb.g(), paramb.h(), paramb.i(), new com.grubhub.AppBaseLibrary.android.b()
        {
          public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            GHSOrderStatusFragment.a(GHSOrderStatusFragment.this, false);
          }
        });
      }
      h = true;
    }
    for (;;)
    {
      q.a(o, i);
      p.setRefreshing(false);
      return;
      label128:
      if (!h)
      {
        paramb = localq.getString(2131231598);
        o.findViewById(2131690264).setVisibility(0);
        ((TextView)o.findViewById(2131690263)).setText(paramb);
        i = new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            GHSOrderStatusFragment.d(GHSOrderStatusFragment.this);
          }
        };
      }
    }
  }
  
  private void a(final GHSIPastOrderDataModel paramGHSIPastOrderDataModel, final int paramInt)
  {
    q localq = getActivity();
    if ((localq != null) && (paramGHSIPastOrderDataModel != null) && (com.grubhub.AppBaseLibrary.android.utils.f.b(paramGHSIPastOrderDataModel.getOrderId())))
    {
      if ((k != null) && (k.h())) {
        k.g();
      }
      k = new com.grubhub.AppBaseLibrary.android.dataServices.a.e.b(localq, paramGHSIPastOrderDataModel.getOrderId(), null, null, new i()
      {
        public void a()
        {
          GHSOrderStatusFragment.a(GHSOrderStatusFragment.this, null);
        }
      });
      k.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSIOrderStatus paramAnonymousGHSIOrderStatus)
        {
          if (paramAnonymousGHSIOrderStatus != null)
          {
            Collections.reverse(paramAnonymousGHSIOrderStatus.getOrderEvents());
            GHSOrderStatusFragment.c(GHSOrderStatusFragment.this).add(new c(GHSOrderStatusFragment.this, paramGHSIPastOrderDataModel, paramAnonymousGHSIOrderStatus));
            GHSOrderStatusFragment.a(GHSOrderStatusFragment.this, paramInt + 1);
          }
        }
      });
      k.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          GHSOrderStatusFragment.a(GHSOrderStatusFragment.this, paramAnonymousb);
        }
      });
      k.a();
    }
  }
  
  private void a(GHSIPastOrderDataModel paramGHSIPastOrderDataModel, GHSIOrderStatus paramGHSIOrderStatus)
  {
    if ((paramGHSIPastOrderDataModel != null) && (paramGHSIOrderStatus != null))
    {
      GHSICartPaymentDataModel.PaymentTypes localPaymentTypes = null;
      if ((paramGHSIPastOrderDataModel instanceof GHSICartDataModel))
      {
        GHSApplication.a().b().b((GHSICartDataModel)paramGHSIPastOrderDataModel);
        localPaymentTypes = a((GHSICartDataModel)paramGHSIPastOrderDataModel);
      }
      a(paramGHSIPastOrderDataModel.getOrderNumber(), paramGHSIPastOrderDataModel.getRestaurantId(), paramGHSIPastOrderDataModel.getDinerName(), paramGHSIPastOrderDataModel.getDinerPhone(), paramGHSIOrderStatus.getDelivery().booleanValue(), localPaymentTypes);
    }
  }
  
  private void a(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes)
  {
    GHSIRestaurantDataModel localGHSIRestaurantDataModel = GHSApplication.a().b().V();
    if ((localGHSIRestaurantDataModel != null) && (localGHSIRestaurantDataModel.getRestaurantId() != null) && (localGHSIRestaurantDataModel.getRestaurantId().equals(paramString2)))
    {
      c(paramString1, paramString3, "", paramString4, paramBoolean, paramPaymentTypes);
      paramString1 = getActivity();
      if ((paramString1 instanceof GHSBaseActivity)) {
        ((GHSBaseActivity)paramString1).a(false);
      }
      return;
    }
    b(paramString1, paramString2, paramString3, paramString4, paramBoolean, paramPaymentTypes);
  }
  
  private void a(final boolean paramBoolean)
  {
    q localq = getActivity();
    if ((localq != null) && ((j == null) || (!j.h())))
    {
      h = false;
      f = false;
      j = new com.grubhub.AppBaseLibrary.android.dataServices.a.e.c(localq, b, new i()new i
      {
        public void a()
        {
          if (paramBoolean)
          {
            GHSOrderStatusFragment.a(GHSOrderStatusFragment.this).setRefreshing(true);
            return;
          }
          GHSOrderStatusFragment.b(GHSOrderStatusFragment.this).a();
        }
      }, new i()
      {
        public void a()
        {
          GHSOrderStatusFragment.a(GHSOrderStatusFragment.this, null);
        }
      });
      j.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSIPastOrderListDataModel paramAnonymousGHSIPastOrderListDataModel)
        {
          GHSOrderStatusFragment.a(GHSOrderStatusFragment.this, paramAnonymousGHSIPastOrderListDataModel);
          GHSOrderStatusFragment.a(GHSOrderStatusFragment.this, paramAnonymousGHSIPastOrderListDataModel.getPastOrders());
          GHSOrderStatusFragment.b(GHSOrderStatusFragment.this, paramBoolean);
          GHSOrderStatusFragment.c(GHSOrderStatusFragment.this, true);
        }
      });
      j.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          GHSOrderStatusFragment.c(GHSOrderStatusFragment.this, true);
          GHSOrderStatusFragment.a(GHSOrderStatusFragment.this, paramAnonymousb);
        }
      });
      j.a();
    }
  }
  
  private boolean a(GHSIPastOrderDataModel paramGHSIPastOrderDataModel)
  {
    return (paramGHSIPastOrderDataModel != null) && (paramGHSIPastOrderDataModel.getOrderType() == g.DELIVERY) && (paramGHSIPastOrderDataModel.isOrderTrackingEnabled());
  }
  
  private void b(final String paramString1, String paramString2, final String paramString3, final String paramString4, final boolean paramBoolean, final GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes)
  {
    l = new com.grubhub.AppBaseLibrary.android.dataServices.a.c(getActivity(), paramString2, null, null, l.DEFAULT, null, true, new i()new i
    {
      public void a()
      {
        q localq = getActivity();
        if ((localq instanceof GHSBaseActivity)) {
          ((GHSBaseActivity)localq).a(true);
        }
      }
    }, new i()
    {
      public void a()
      {
        q localq = getActivity();
        if ((localq instanceof GHSBaseActivity)) {
          ((GHSBaseActivity)localq).a(false);
        }
      }
    });
    l.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSIRestaurantDataModel paramAnonymousGHSIRestaurantDataModel)
      {
        if (paramAnonymousGHSIRestaurantDataModel != null)
        {
          GHSApplication.a().b().c(paramAnonymousGHSIRestaurantDataModel);
          GHSOrderStatusFragment.a(GHSOrderStatusFragment.this, paramString1, paramString3, "", paramString4, paramBoolean, paramPaymentTypes);
        }
      }
    });
    paramString1 = l;
    l.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        q localq = getActivity();
        if ((localq instanceof GHSBaseActivity)) {
          ((GHSBaseActivity)localq).a(false);
        }
        com.grubhub.AppBaseLibrary.android.c.a(getActivity(), paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), paramAnonymousb.g(), paramAnonymousb.h(), paramAnonymousb.i(), new com.grubhub.AppBaseLibrary.android.d()
        {
          public void a(DialogInterface paramAnonymous2DialogInterface)
          {
            paramAnonymous2DialogInterface = (GHSMainActivity)getActivity();
            if (paramAnonymous2DialogInterface != null) {
              paramAnonymous2DialogInterface.onBackPressed();
            }
          }
          
          public void a(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            a.a();
          }
          
          public void b(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            paramAnonymous2DialogInterface = (GHSMainActivity)getActivity();
            if (paramAnonymous2DialogInterface != null) {
              paramAnonymous2DialogInterface.onBackPressed();
            }
          }
          
          public void c(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            paramAnonymous2DialogInterface = (GHSMainActivity)getActivity();
            if (paramAnonymous2DialogInterface != null) {
              paramAnonymous2DialogInterface.onBackPressed();
            }
          }
        });
      }
    });
    l.a();
  }
  
  private void b(boolean paramBoolean)
  {
    if (e == null)
    {
      e = new ArrayList();
      if (!paramBoolean) {
        break label46;
      }
      p.setRefreshing(true);
    }
    for (;;)
    {
      a(0);
      return;
      e.clear();
      break;
      label46:
      q.a();
    }
  }
  
  private void c()
  {
    q localq = getActivity();
    if ((localq instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)localq).b(getClass().getSimpleName());
    }
  }
  
  private void c(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes)
  {
    startActivity(GHSReceiptActivity.a(getActivity(), paramString1, paramString2, paramString3, paramString4, paramBoolean, paramPaymentTypes, a.LAUNCHED_BY_ORDER_STATUS));
  }
  
  public void b()
  {
    if ((n != null) && (d != null) && (!d.isEmpty()) && (e != null) && (!e.isEmpty()))
    {
      if (n.getAdapter() == null)
      {
        b localb = new b(this, getActivity(), 2130903188, e);
        n.setAdapter(localb);
      }
      for (;;)
      {
        q.b();
        p.setRefreshing(false);
        return;
        ((b)n.getAdapter()).a(e);
      }
    }
    a(null);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof e)) {
      m = ((e)paramActivity);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      c = ((GHSIPastOrderListDataModel)paramBundle.getParcelable(a));
      if (c != null) {
        d = c.getPastOrders();
      }
    }
    paramBundle = GHSApplication.a().b().N();
    if (paramBundle != null) {}
    for (paramBundle = paramBundle.getUdid();; paramBundle = null)
    {
      b = paramBundle;
      setHasOptionsMenu(true);
      return;
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenu = getActivity();
    if ((paramMenu != null) && ((paramMenu instanceof com.grubhub.AppBaseLibrary.android.e))) {
      ((com.grubhub.AppBaseLibrary.android.e)paramMenu).d(4);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    q = ((GHSLoadingViewFlipper)paramLayoutInflater.inflate(2130903136, paramViewGroup, false));
    p = ((SwipeRefreshLayout)q.findViewById(2131689848));
    p.setColorSchemeResources(new int[] { 2131558480, 2131558479, 2131558480, 2131558479 });
    p.setOnRefreshListener(new at()
    {
      public void a()
      {
        GHSOrderStatusFragment.a(GHSOrderStatusFragment.this, true);
      }
    });
    o = paramLayoutInflater.inflate(2130903211, q, false);
    n = ((ListView)q.findViewById(2131689924));
    n.setAdapter(new b(this, getActivity(), 2130903188, new ArrayList()));
    return q;
  }
  
  public void onDetach()
  {
    super.onDetach();
    m = null;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      c();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu = getActivity();
    ActionBar localActionBar = paramMenu.getActionBar();
    if (localActionBar != null) {
      localActionBar.setDisplayHomeAsUpEnabled(true);
    }
    if ((paramMenu instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)paramMenu).b(2131230857);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    q localq = getActivity();
    if ((localq != null) && ((localq instanceof com.grubhub.AppBaseLibrary.android.e))) {
      ((com.grubhub.AppBaseLibrary.android.e)localq).d(false);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = new Bundle();
    }
    localBundle.putParcelable(a, c);
    super.onSaveInstanceState(localBundle);
  }
  
  public void onStart()
  {
    super.onStart();
    if (!f) {
      a(false);
    }
    for (;;)
    {
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, com.grubhub.AppBaseLibrary.android.utils.c.f.ORDER_STATUS_TRACKING, "order tracking status"));
      return;
      if ((f) && (!g)) {
        b(false);
      } else {
        b();
      }
    }
  }
  
  public void onStop()
  {
    super.onStop();
    if (j != null)
    {
      j.g();
      j = null;
      q.b();
    }
    if (k != null)
    {
      k.g();
      k = null;
    }
    if (l != null)
    {
      l.g();
      l = null;
    }
    q localq = getActivity();
    if ((localq instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)localq).a(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.GHSOrderStatusFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */