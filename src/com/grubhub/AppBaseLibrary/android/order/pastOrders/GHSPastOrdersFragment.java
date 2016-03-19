package com.grubhub.AppBaseLibrary.android.order.pastOrders;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.q;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v4.widget.at;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import java.util.ArrayList;

public class GHSPastOrdersFragment
  extends Fragment
{
  private String a;
  private ArrayList<GHSIPastOrderDataModel> b;
  private ArrayList<GHSIOrderReviewDataModel> c;
  private boolean d;
  private boolean e;
  private boolean f;
  private ListView g;
  private View h;
  private SwipeRefreshLayout i;
  private GHSLoadingViewFlipper j;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.e.c k;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.h.b l;
  private f m;
  
  public static GHSPastOrdersFragment a()
  {
    return new GHSPastOrdersFragment();
  }
  
  private b a(Context paramContext, ArrayList<GHSIPastOrderDataModel> paramArrayList, ArrayList<GHSIOrderReviewDataModel> paramArrayList1)
  {
    paramContext = new b(getActivity(), 2130903190, paramArrayList);
    paramContext.a(paramArrayList1);
    paramContext.a(d.ORDER_HISTORY);
    paramContext.b(true);
    paramContext.a(true);
    paramContext.a(new c()
    {
      public void a(GHSIPastOrderDataModel paramAnonymousGHSIPastOrderDataModel)
      {
        if (!GHSPastOrdersFragment.a(GHSPastOrdersFragment.this))
        {
          GHSPastOrdersFragment.a(GHSPastOrdersFragment.this, true);
          if (GHSPastOrdersFragment.b(GHSPastOrdersFragment.this) != null) {
            GHSPastOrdersFragment.b(GHSPastOrdersFragment.this).a(paramAnonymousGHSIPastOrderDataModel);
          }
          GHSPastOrdersFragment.a(GHSPastOrdersFragment.this, false);
        }
      }
    });
    return paramContext;
  }
  
  private void a(ArrayList<GHSIPastOrderDataModel> paramArrayList, final boolean paramBoolean)
  {
    q localq = getActivity();
    if (localq != null)
    {
      paramArrayList = com.grubhub.AppBaseLibrary.android.utils.d.a(paramArrayList, null);
      if ((paramArrayList == null) || (paramArrayList.isEmpty())) {
        break label105;
      }
      if ((l == null) || (!l.h()))
      {
        l = new com.grubhub.AppBaseLibrary.android.dataServices.a.h.b(localq, paramArrayList, true, null, new i()
        {
          public void a()
          {
            if (paramBoolean) {
              GHSPastOrdersFragment.c(GHSPastOrdersFragment.this).setRefreshing(false);
            }
            GHSPastOrdersFragment.a(GHSPastOrdersFragment.this, null);
          }
        });
        l.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
        {
          public void a(ArrayList<GHSIOrderReviewDataModel> paramAnonymousArrayList)
          {
            GHSPastOrdersFragment.b(GHSPastOrdersFragment.this, paramAnonymousArrayList);
            GHSPastOrdersFragment.f(GHSPastOrdersFragment.this);
            GHSPastOrdersFragment.c(GHSPastOrdersFragment.this, true);
          }
        });
        l.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
        {
          public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
          {
            GHSPastOrdersFragment.f(GHSPastOrdersFragment.this);
            GHSPastOrdersFragment.c(GHSPastOrdersFragment.this, true);
          }
        });
        l.a();
      }
    }
    return;
    label105:
    b();
    f = true;
  }
  
  private void a(final boolean paramBoolean1, final boolean paramBoolean2)
  {
    final Object localObject = getActivity();
    if ((localObject != null) && ((k == null) || (!k.h())))
    {
      k = new com.grubhub.AppBaseLibrary.android.dataServices.a.e.c((Context)localObject, a, false, true, new i()new i
      {
        public void a()
        {
          if (paramBoolean1)
          {
            GHSPastOrdersFragment.c(GHSPastOrdersFragment.this).setRefreshing(true);
            return;
          }
          GHSPastOrdersFragment.d(GHSPastOrdersFragment.this).a();
        }
      }, new i()
      {
        public void a()
        {
          GHSPastOrdersFragment.a(GHSPastOrdersFragment.this, null);
        }
      });
      localObject = k;
      k.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSIPastOrderListDataModel paramAnonymousGHSIPastOrderListDataModel)
        {
          if (getActivity() != null)
          {
            GHSPastOrdersFragment.a(GHSPastOrdersFragment.this, paramAnonymousGHSIPastOrderListDataModel.getPastOrders());
            GHSPastOrdersFragment.a(GHSPastOrdersFragment.this, GHSPastOrdersFragment.e(GHSPastOrdersFragment.this), paramBoolean1);
          }
          GHSPastOrdersFragment.b(GHSPastOrdersFragment.this, true);
        }
      });
      k.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(final com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          q localq = getActivity();
          if (localq != null)
          {
            com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
            GHSIPastOrderListDataModel localGHSIPastOrderListDataModel = localb.ab();
            if (localGHSIPastOrderListDataModel != null) {
              GHSPastOrdersFragment.a(GHSPastOrdersFragment.this, localGHSIPastOrderListDataModel.getPastOrders());
            }
            GHSPastOrdersFragment.b(GHSPastOrdersFragment.this, localb.M());
            GHSPastOrdersFragment.f(GHSPastOrdersFragment.this);
            if ((!paramBoolean2) || (GHSPastOrdersFragment.e(GHSPastOrdersFragment.this) == null)) {
              com.grubhub.AppBaseLibrary.android.c.a(localq, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), paramAnonymousb.g(), paramAnonymousb.h(), paramAnonymousb.i(), new com.grubhub.AppBaseLibrary.android.b()
              {
                public void a(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                {
                  if (paramAnonymousb.d()) {
                    b.a();
                  }
                }
              });
            }
            if (paramBoolean1) {
              GHSPastOrdersFragment.c(GHSPastOrdersFragment.this).setRefreshing(false);
            }
          }
          GHSPastOrdersFragment.b(GHSPastOrdersFragment.this, true);
        }
      });
      k.a();
    }
  }
  
  private void b()
  {
    Object localObject = getActivity();
    if ((localObject != null) && (g != null) && (j != null) && (h != null))
    {
      if ((b == null) || (b.isEmpty())) {
        break label125;
      }
      if (g.getAdapter() != null) {
        break label95;
      }
      localObject = a((Context)localObject, b, c);
      g.setAdapter((ListAdapter)localObject);
    }
    for (;;)
    {
      j.b();
      i.setRefreshing(false);
      return;
      label95:
      localObject = (b)g.getAdapter();
      ((b)localObject).b(b);
      ((b)localObject).a(c);
    }
    label125:
    localObject = ((Activity)localObject).getString(2131231601);
    ((TextView)h.findViewById(2131690266)).setText((CharSequence)localObject);
    j.a(h, new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = GHSPastOrdersFragment.this;
        if (!GHSPastOrdersFragment.g(GHSPastOrdersFragment.this)) {}
        for (boolean bool = true;; bool = false)
        {
          GHSPastOrdersFragment.a(paramAnonymousView, false, bool);
          return;
        }
      }
    });
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof f)) {
      m = ((f)paramActivity);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = GHSApplication.a().b().N();
    if (paramBundle != null) {}
    for (paramBundle = paramBundle.getUdid();; paramBundle = null)
    {
      a = paramBundle;
      setHasOptionsMenu(true);
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = (ViewGroup)paramLayoutInflater.inflate(2130903140, paramViewGroup, false);
    i = ((SwipeRefreshLayout)paramViewGroup.findViewById(2131689848));
    i.setColorSchemeResources(new int[] { 2131558480, 2131558479, 2131558480, 2131558479 });
    i.setOnRefreshListener(new at()
    {
      public void a()
      {
        GHSPastOrdersFragment.a(GHSPastOrdersFragment.this, true, false);
      }
    });
    j = ((GHSLoadingViewFlipper)paramViewGroup.findViewById(2131689948));
    h = paramLayoutInflater.inflate(2130903213, j, false);
    g = ((ListView)paramViewGroup.findViewById(2131689959));
    paramLayoutInflater = a(getActivity(), new ArrayList(), null);
    g.setAdapter(paramLayoutInflater);
    return paramViewGroup;
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
      if (m != null)
      {
        m.j();
        return true;
      }
      return false;
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
      ((GHSBaseActivity)paramMenu).b(2131230860);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if ((f) && (g != null) && (g.getAdapter() != null))
    {
      c = GHSApplication.a().b().M();
      ((b)g.getAdapter()).a(c);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if (!e) {
      a(false, true);
    }
    for (;;)
    {
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, com.grubhub.AppBaseLibrary.android.utils.c.f.USER_ACCOUNT_INFO, "order history"));
      return;
      if (!f) {
        a(b, false);
      } else {
        b();
      }
    }
  }
  
  public void onStop()
  {
    super.onStop();
    if (k != null)
    {
      k.g();
      k = null;
      b();
    }
    if (l != null)
    {
      l.g();
      l = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.pastOrders.GHSPastOrdersFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */