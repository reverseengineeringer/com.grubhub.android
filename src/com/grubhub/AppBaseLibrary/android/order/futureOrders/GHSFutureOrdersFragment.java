package com.grubhub.AppBaseLibrary.android.order.futureOrders;

import android.app.ActionBar;
import android.app.Activity;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v4.widget.at;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.a.b.k;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserCartsDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import com.grubhub.AppBaseLibrary.android.views.GHSTextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

public class GHSFutureOrdersFragment
  extends Fragment
{
  private boolean a;
  private List<GHSICartDataModel> b;
  private Activity c;
  private View d;
  private ListView e;
  private SwipeRefreshLayout f;
  private GHSLoadingViewFlipper g;
  private k h;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.b.f i;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.c j;
  private c k;
  
  public static GHSFutureOrdersFragment a()
  {
    return new GHSFutureOrdersFragment();
  }
  
  private void a(int paramInt)
  {
    if (k == null) {
      return;
    }
    final GHSICartDataModel localGHSICartDataModel = (GHSICartDataModel)b.get(paramInt);
    j = new com.grubhub.AppBaseLibrary.android.dataServices.a.c(c, localGHSICartDataModel.getRestaurantId(), null, null, com.grubhub.AppBaseLibrary.android.order.l.FUTURE, Long.valueOf(localGHSICartDataModel.getExpectedTimeInMillis()), true, new i()new i
    {
      public void a()
      {
        GHSFutureOrdersFragment.a(GHSFutureOrdersFragment.this, true);
      }
    }, new i()
    {
      public void a()
      {
        GHSFutureOrdersFragment.a(GHSFutureOrdersFragment.this, false);
        GHSFutureOrdersFragment.a(GHSFutureOrdersFragment.this, null);
      }
    });
    j.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSIRestaurantDataModel paramAnonymousGHSIRestaurantDataModel)
      {
        GHSFutureOrdersFragment.a(GHSFutureOrdersFragment.this).a(localGHSICartDataModel, paramAnonymousGHSIRestaurantDataModel);
      }
    });
    j.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        com.grubhub.AppBaseLibrary.android.c.a(GHSFutureOrdersFragment.b(GHSFutureOrdersFragment.this), paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), paramAnonymousb.g(), paramAnonymousb.h(), paramAnonymousb.i(), null);
      }
    });
    j.a();
  }
  
  private void a(LayoutInflater paramLayoutInflater)
  {
    d = paramLayoutInflater.inflate(2130903166, g, false);
    Object localObject = getString(2131231324);
    String str = String.format(getString(2131231325), new Object[] { localObject });
    paramLayoutInflater = new SpannableString(str);
    paramLayoutInflater.setSpan(new ClickableSpan()
    {
      public void onClick(View paramAnonymousView)
      {
        if (GHSFutureOrdersFragment.a(GHSFutureOrdersFragment.this) != null) {
          GHSFutureOrdersFragment.a(GHSFutureOrdersFragment.this).j();
        }
      }
      
      public void updateDrawState(TextPaint paramAnonymousTextPaint)
      {
        paramAnonymousTextPaint.setColor(linkColor);
      }
    }, str.indexOf((String)localObject), str.indexOf((String)localObject) + ((String)localObject).length(), 33);
    ForegroundColorSpan localForegroundColorSpan = new ForegroundColorSpan(getResources().getColor(2131558463));
    int m = str.indexOf((String)localObject);
    int n = str.indexOf((String)localObject);
    paramLayoutInflater.setSpan(localForegroundColorSpan, m, ((String)localObject).length() + n, 33);
    localObject = (GHSTextView)d.findViewById(2131690161);
    ((GHSTextView)localObject).setMovementMethod(LinkMovementMethod.getInstance());
    ((GHSTextView)localObject).setHighlightColor(0);
    ((GHSTextView)localObject).setText(paramLayoutInflater);
  }
  
  private void a(boolean paramBoolean)
  {
    if ((c instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)c).a(paramBoolean);
    }
  }
  
  private void a(final boolean paramBoolean, final b paramb)
  {
    if (c == null) {
      return;
    }
    h = new k(c, true, new i()new i
    {
      public void a()
      {
        if (paramBoolean)
        {
          GHSFutureOrdersFragment.c(GHSFutureOrdersFragment.this).setRefreshing(true);
          return;
        }
        GHSFutureOrdersFragment.d(GHSFutureOrdersFragment.this).setBackgroundColor(getResources().getColor(2131558468));
        GHSFutureOrdersFragment.d(GHSFutureOrdersFragment.this).a();
      }
    }, new i()
    {
      public void a()
      {
        GHSFutureOrdersFragment.a(GHSFutureOrdersFragment.this, false);
        GHSFutureOrdersFragment.a(GHSFutureOrdersFragment.this, null);
      }
    });
    final k localk = h;
    h.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSIUserCartsDataModel paramAnonymousGHSIUserCartsDataModel)
      {
        GHSFutureOrdersFragment.b(GHSFutureOrdersFragment.this, true);
        if ((paramAnonymousGHSIUserCartsDataModel == null) || (paramAnonymousGHSIUserCartsDataModel.getUserCarts() == null) || (paramAnonymousGHSIUserCartsDataModel.getUserCarts().isEmpty()))
        {
          GHSFutureOrdersFragment.a(GHSFutureOrdersFragment.this, null);
          GHSFutureOrdersFragment.d(GHSFutureOrdersFragment.this).a(GHSFutureOrdersFragment.e(GHSFutureOrdersFragment.this), null);
          GHSFutureOrdersFragment.c(GHSFutureOrdersFragment.this).setRefreshing(false);
        }
        for (;;)
        {
          GHSFutureOrdersFragment.g(GHSFutureOrdersFragment.this);
          if (paramb != null) {
            paramb.a();
          }
          return;
          GHSFutureOrdersFragment.a(GHSFutureOrdersFragment.this, new ArrayList(paramAnonymousGHSIUserCartsDataModel.getUserCarts().values()));
          Collections.sort(GHSFutureOrdersFragment.f(GHSFutureOrdersFragment.this), new Comparator()
          {
            public int a(GHSICartDataModel paramAnonymous2GHSICartDataModel1, GHSICartDataModel paramAnonymous2GHSICartDataModel2)
            {
              long l1 = paramAnonymous2GHSICartDataModel1.getExpectedTimeInMillis();
              long l2 = paramAnonymous2GHSICartDataModel2.getExpectedTimeInMillis();
              if (l1 < l2) {
                return -1;
              }
              if (l1 > l2) {
                return 1;
              }
              return paramAnonymous2GHSICartDataModel1.getRestaurantName().compareTo(paramAnonymous2GHSICartDataModel2.getRestaurantName());
            }
          });
        }
      }
    });
    h.a(new d()
    {
      public void a(final com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        GHSFutureOrdersFragment.a(GHSFutureOrdersFragment.this, false);
        GHSFutureOrdersFragment.b(GHSFutureOrdersFragment.this, true);
        com.grubhub.AppBaseLibrary.android.c.a(GHSFutureOrdersFragment.b(GHSFutureOrdersFragment.this), paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), paramAnonymousb.g(), paramAnonymousb.h(), paramAnonymousb.i(), new com.grubhub.AppBaseLibrary.android.b()
        {
          public void a(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            if (paramAnonymousb.d()) {
              a.a();
            }
          }
        });
        GHSFutureOrdersFragment.d(GHSFutureOrdersFragment.this).a(GHSFutureOrdersFragment.e(GHSFutureOrdersFragment.this), null);
        GHSFutureOrdersFragment.c(GHSFutureOrdersFragment.this).setRefreshing(false);
      }
    });
    h.a();
  }
  
  private void b()
  {
    if ((b == null) || (b.isEmpty()))
    {
      g.a(d, null);
      return;
    }
    if (e.getAdapter() == null) {
      e.setAdapter(new a(this, c, 2130903179, b));
    }
    for (;;)
    {
      g.b();
      f.setRefreshing(false);
      return;
      ((a)e.getAdapter()).a(b);
    }
  }
  
  public void a(String paramString)
  {
    i = new com.grubhub.AppBaseLibrary.android.dataServices.a.b.f(c, paramString, new i()new i
    {
      public void a()
      {
        GHSFutureOrdersFragment.a(GHSFutureOrdersFragment.this, true);
      }
    }, new i()
    {
      public void a()
      {
        GHSFutureOrdersFragment.a(GHSFutureOrdersFragment.this, null);
      }
    });
    i.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(Void paramAnonymousVoid)
      {
        GHSFutureOrdersFragment.a(GHSFutureOrdersFragment.this, false, new b()
        {
          public void a()
          {
            if (GHSFutureOrdersFragment.a(GHSFutureOrdersFragment.this) != null) {
              GHSFutureOrdersFragment.a(GHSFutureOrdersFragment.this).i();
            }
          }
        });
      }
    });
    i.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        GHSFutureOrdersFragment.a(GHSFutureOrdersFragment.this, false);
        com.grubhub.AppBaseLibrary.android.c.a(GHSFutureOrdersFragment.b(GHSFutureOrdersFragment.this), paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), paramAnonymousb.g(), paramAnonymousb.h(), paramAnonymousb.i(), null);
      }
    });
    i.a();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    c = paramActivity;
    if ((c instanceof c)) {
      k = ((c)c);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    g = ((GHSLoadingViewFlipper)paramLayoutInflater.inflate(2130903126, paramViewGroup, false));
    f = ((SwipeRefreshLayout)g.findViewById(2131689848));
    f.setColorSchemeResources(new int[] { 2131558480, 2131558479, 2131558480, 2131558479 });
    f.setOnRefreshListener(new at()
    {
      public void a()
      {
        GHSFutureOrdersFragment.a(GHSFutureOrdersFragment.this, true, null);
      }
    });
    e = ((ListView)g.findViewById(2131689870));
    e.setAdapter(new a(this, getActivity(), 2130903179, new ArrayList()));
    e.setVisibility(0);
    e.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        GHSFutureOrdersFragment.a(GHSFutureOrdersFragment.this, paramAnonymousInt);
      }
    });
    a(paramLayoutInflater);
    return g;
  }
  
  public void onDetach()
  {
    super.onDetach();
    c = null;
    k = null;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      if (k != null)
      {
        k.h();
        return true;
      }
      return false;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu = c.getActionBar();
    if (paramMenu != null) {
      paramMenu.setDisplayHomeAsUpEnabled(true);
    }
    if ((c instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)c).b(2131230848);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if (!a) {
      a(false, null);
    }
    for (;;)
    {
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, com.grubhub.AppBaseLibrary.android.utils.c.f.USER_ACCOUNT_INFO, "future orders"));
      return;
      b();
    }
  }
  
  public void onStop()
  {
    super.onStop();
    if (h != null)
    {
      h.g();
      h = null;
    }
    if (j != null)
    {
      j.g();
      j = null;
    }
    if (i != null)
    {
      i.g();
      i = null;
    }
    g.b();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.futureOrders.GHSFutureOrdersFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */