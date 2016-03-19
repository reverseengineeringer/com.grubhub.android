package com.grubhub.AppBaseLibrary.android.account;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.app.ActionBar;
import android.app.Activity;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.ListFragment;
import android.support.v4.app.q;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.ListView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.a.b.o;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSDeliveryInfoDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.order.GHSOutOfRangeDialog;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import java.util.ArrayList;

public class GHSSavedAddressListFragment
  extends ListFragment
  implements com.grubhub.AppBaseLibrary.android.d
{
  private boolean A = false;
  private j B;
  public View.OnTouchListener i = new View.OnTouchListener()
  {
    float a;
    long b;
    long c;
    float d;
    private int f = -1;
    
    public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
    {
      float f1 = 0.0F;
      if (paramAnonymousView == null) {}
      float f2;
      label311:
      label323:
      int i;
      do
      {
        do
        {
          do
          {
            return false;
            if (f < 0) {
              f = ViewConfiguration.get(getActivity()).getScaledTouchSlop();
            }
            switch (paramAnonymousMotionEvent.getAction())
            {
            default: 
              return false;
            case 0: 
              b = paramAnonymousMotionEvent.getEventTime();
            }
          } while (GHSSavedAddressListFragment.a(GHSSavedAddressListFragment.this));
          GHSSavedAddressListFragment.a(GHSSavedAddressListFragment.this, true);
          a = paramAnonymousMotionEvent.getX();
          d = (a + paramAnonymousView.getTranslationX());
          return false;
          paramAnonymousView.setTranslationX(0.0F);
          GHSSavedAddressListFragment.a(GHSSavedAddressListFragment.this, false);
          GHSSavedAddressListFragment.b(GHSSavedAddressListFragment.this, false);
          return false;
          GHSSavedAddressListFragment.b(GHSSavedAddressListFragment.this, true);
          f1 = paramAnonymousView.getTranslationX();
          float f3 = paramAnonymousMotionEvent.getX() + f1;
          f2 = f3 - d;
          d = f3;
          f3 = Math.abs(f2);
          if (!GHSSavedAddressListFragment.b(GHSSavedAddressListFragment.this))
          {
            if (f3 <= f) {
              break label311;
            }
            GHSSavedAddressListFragment.c(GHSSavedAddressListFragment.this, true);
            a().requestDisallowInterceptTouchEvent(true);
          }
          while ((GHSSavedAddressListFragment.b(GHSSavedAddressListFragment.this)) && (((f2 < 0.0F) && (f1 > GHSSavedAddressListFragment.c(GHSSavedAddressListFragment.this))) || ((f2 > 0.0F) && (f1 < 0.0F))))
          {
            paramAnonymousView.setTranslationX(f1 + f2);
            if (paramAnonymousView.getTranslationX() >= GHSSavedAddressListFragment.c(GHSSavedAddressListFragment.this)) {
              break label323;
            }
            paramAnonymousView.setTranslationX(GHSSavedAddressListFragment.c(GHSSavedAddressListFragment.this));
            return false;
            GHSSavedAddressListFragment.b(GHSSavedAddressListFragment.this, false);
          }
        } while (paramAnonymousView.getTranslationX() <= 0.0F);
        paramAnonymousView.setTranslationX(0.0F);
        return false;
        GHSSavedAddressListFragment.b(GHSSavedAddressListFragment.this, false);
        c = paramAnonymousMotionEvent.getEventTime();
        if ((c - b >= 500L) || (GHSSavedAddressListFragment.b(GHSSavedAddressListFragment.this))) {
          break label448;
        }
        a().requestDisallowInterceptTouchEvent(false);
        i = ((Integer)paramAnonymousView.getTag()).intValue();
        paramAnonymousMotionEvent = new int[2];
        paramAnonymousView.getLocationInWindow(paramAnonymousMotionEvent);
        if (paramAnonymousMotionEvent[0] != 0) {
          break;
        }
      } while (!GHSSavedAddressListFragment.d(GHSSavedAddressListFragment.this));
      GHSSavedAddressListFragment.a(GHSSavedAddressListFragment.this, i);
      return false;
      paramAnonymousView.setTranslationX(0.0F);
      return false;
      label448:
      if (GHSSavedAddressListFragment.b(GHSSavedAddressListFragment.this))
      {
        f2 = paramAnonymousView.getTranslationX() / GHSSavedAddressListFragment.c(GHSSavedAddressListFragment.this);
        if (f2 < 0.5D) {
          break label541;
        }
        f1 = GHSSavedAddressListFragment.c(GHSSavedAddressListFragment.this);
      }
      label541:
      for (long l = ((1.0F - f2) * 100.0F);; l = (f2 * 100.0F))
      {
        paramAnonymousView.animate().setDuration(Math.abs(l)).translationX(f1).setListener(new Animator.AnimatorListener()
        {
          public void onAnimationCancel(Animator paramAnonymous2Animator) {}
          
          public void onAnimationEnd(Animator paramAnonymous2Animator)
          {
            GHSSavedAddressListFragment.c(GHSSavedAddressListFragment.this, false);
          }
          
          public void onAnimationRepeat(Animator paramAnonymous2Animator) {}
          
          public void onAnimationStart(Animator paramAnonymous2Animator) {}
        });
        GHSSavedAddressListFragment.a(GHSSavedAddressListFragment.this, false);
        return false;
      }
    }
  };
  private boolean j;
  private int k;
  private boolean l;
  private boolean m;
  private boolean n;
  private boolean o;
  private boolean p;
  private boolean q;
  private boolean r;
  private ArrayList<GHSIAddressDataModel> s;
  private String t;
  private String u;
  private i v;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.i.b w;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.i.c x;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.e y;
  private o z;
  
  public static GHSSavedAddressListFragment a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    return a(paramString, paramBoolean1, paramBoolean2, null, false, false);
  }
  
  public static GHSSavedAddressListFragment a(String paramString1, boolean paramBoolean1, boolean paramBoolean2, String paramString2, boolean paramBoolean3, boolean paramBoolean4)
  {
    GHSSavedAddressListFragment localGHSSavedAddressListFragment = new GHSSavedAddressListFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("selected_id", paramString1);
    localBundle.putBoolean("selectable_addresses", paramBoolean1);
    localBundle.putBoolean("cross_street_required", paramBoolean2);
    localBundle.putString("deliver_to_restaurant_id", paramString2);
    localBundle.putBoolean("retain_delivery_radius_spinner", paramBoolean3);
    localBundle.putBoolean("display_pickup_option", paramBoolean4);
    localGHSSavedAddressListFragment.setArguments(localBundle);
    return localGHSSavedAddressListFragment;
  }
  
  private void a(int paramInt)
  {
    a().requestDisallowInterceptTouchEvent(false);
    GHSIAddressDataModel localGHSIAddressDataModel = B.a(paramInt);
    if (((o) && (com.grubhub.AppBaseLibrary.android.utils.f.a(localGHSIAddressDataModel.getCrossStreet()))) || (!com.grubhub.AppBaseLibrary.android.utils.h.a.b(localGHSIAddressDataModel.getPhone()))) {
      if (v != null) {
        v.a(localGHSIAddressDataModel, o, true, u);
      }
    }
    while (r) {
      return;
    }
    if (u != null)
    {
      a(localGHSIAddressDataModel);
      return;
    }
    b(localGHSIAddressDataModel);
  }
  
  private void a(final GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    y = new com.grubhub.AppBaseLibrary.android.dataServices.a.e(getActivity(), u, paramGHSIAddressDataModel.getLatitude(), paramGHSIAddressDataModel.getLongitude(), new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        GHSSavedAddressListFragment.k(GHSSavedAddressListFragment.this);
        GHSSavedAddressListFragment.f(GHSSavedAddressListFragment.this, false);
        if ((getActivity() instanceof GHSBaseActivity)) {
          ((GHSBaseActivity)getActivity()).a(true);
        }
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        if (!GHSSavedAddressListFragment.l(GHSSavedAddressListFragment.this))
        {
          if ((getActivity() instanceof GHSBaseActivity)) {
            ((GHSBaseActivity)getActivity()).a(false);
          }
          GHSSavedAddressListFragment.f(GHSSavedAddressListFragment.this, true);
          GHSSavedAddressListFragment.a(GHSSavedAddressListFragment.this, false);
        }
        GHSSavedAddressListFragment.a(GHSSavedAddressListFragment.this, null);
      }
    });
    y.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSIRestaurantAvailabilityDataModel paramAnonymousGHSIRestaurantAvailabilityDataModel)
      {
        GHSSavedAddressListFragment.k(GHSSavedAddressListFragment.this);
        if ((paramAnonymousGHSIRestaurantAvailabilityDataModel != null) && (paramAnonymousGHSIRestaurantAvailabilityDataModel.getSummary(GHSSavedAddressListFragment.j(GHSSavedAddressListFragment.this)) != null))
        {
          if (paramAnonymousGHSIRestaurantAvailabilityDataModel.getSummary(GHSSavedAddressListFragment.j(GHSSavedAddressListFragment.this)).offersDeliveryToDinerLocation())
          {
            GHSSavedAddressListFragment.b(GHSSavedAddressListFragment.this, paramGHSIAddressDataModel.getId());
            return;
          }
          paramAnonymousGHSIRestaurantAvailabilityDataModel = new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA);
          com.grubhub.AppBaseLibrary.android.c.a(getActivity(), paramAnonymousGHSIRestaurantAvailabilityDataModel.f(), paramAnonymousGHSIRestaurantAvailabilityDataModel.getLocalizedMessage(), null, null, getString(2131231717), GHSSavedAddressListFragment.this);
          if ((getActivity() instanceof GHSBaseActivity)) {
            ((GHSBaseActivity)getActivity()).a(false);
          }
          GHSSavedAddressListFragment.f(GHSSavedAddressListFragment.this, true);
          GHSSavedAddressListFragment.a(GHSSavedAddressListFragment.this, false);
          GHSSavedAddressListFragment.g(GHSSavedAddressListFragment.this, true);
          return;
        }
        paramAnonymousGHSIRestaurantAvailabilityDataModel = new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN);
        com.grubhub.AppBaseLibrary.android.c.a(getActivity(), paramAnonymousGHSIRestaurantAvailabilityDataModel.f(), paramAnonymousGHSIRestaurantAvailabilityDataModel.getLocalizedMessage(), null, null, getString(2131231717), GHSSavedAddressListFragment.this);
        if ((getActivity() instanceof GHSBaseActivity)) {
          ((GHSBaseActivity)getActivity()).a(false);
        }
        GHSSavedAddressListFragment.f(GHSSavedAddressListFragment.this, true);
        GHSSavedAddressListFragment.a(GHSSavedAddressListFragment.this, false);
        GHSSavedAddressListFragment.g(GHSSavedAddressListFragment.this, true);
      }
    });
    y.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        com.grubhub.AppBaseLibrary.android.c.a(getActivity(), paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), null, null, getString(2131231717), GHSSavedAddressListFragment.this);
        GHSSavedAddressListFragment.g(GHSSavedAddressListFragment.this, true);
      }
    });
    y.a();
  }
  
  private void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      getView().findViewById(2131690097).setVisibility(0);
      return;
    }
    getView().findViewById(2131690097).setVisibility(8);
  }
  
  private void b()
  {
    if (getView() != null) {
      a().invalidateViews();
    }
  }
  
  private void b(final GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    GHSDeliveryInfoDataModel localGHSDeliveryInfoDataModel = new GHSDeliveryInfoDataModel(paramGHSIAddressDataModel);
    z = new o(getActivity(), false, localGHSDeliveryInfoDataModel, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        GHSSavedAddressListFragment.k(GHSSavedAddressListFragment.this);
        GHSSavedAddressListFragment.f(GHSSavedAddressListFragment.this, false);
        if ((getActivity() instanceof GHSBaseActivity)) {
          ((GHSBaseActivity)getActivity()).a(true);
        }
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        if ((getActivity() instanceof GHSBaseActivity)) {
          ((GHSBaseActivity)getActivity()).a(false);
        }
        GHSSavedAddressListFragment.f(GHSSavedAddressListFragment.this, true);
        GHSSavedAddressListFragment.a(GHSSavedAddressListFragment.this, false);
        GHSSavedAddressListFragment.a(GHSSavedAddressListFragment.this, null);
      }
    });
    z.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        if (paramAnonymousGHSICartDataModel != null)
        {
          GHSSavedAddressListFragment.k(GHSSavedAddressListFragment.this);
          if (paramAnonymousGHSICartDataModel.getDeliveryAddress() != null)
          {
            GHSApplication.a().b().a(paramGHSIAddressDataModel);
            GHSSavedAddressListFragment.b(GHSSavedAddressListFragment.this, paramGHSIAddressDataModel.getId());
          }
        }
      }
    });
    z.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        GHSIRestaurantDataModel localGHSIRestaurantDataModel = GHSApplication.a().b().U();
        if ((localGHSIRestaurantDataModel != null) && (paramAnonymousb.c() == com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA))
        {
          GHSOutOfRangeDialog.a(localGHSIRestaurantDataModel.getRestaurantId(), localGHSIRestaurantDataModel.getRestaurantName(), localGHSIRestaurantDataModel.offersPickup(), paramGHSIAddressDataModel, com.grubhub.AppBaseLibrary.android.order.i.ORDER, "saved addresses").show(getChildFragmentManager(), GHSOutOfRangeDialog.class.getSimpleName());
          return;
        }
        if ((paramAnonymousb.c() == com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_INVALID_PHONE) && (GHSSavedAddressListFragment.e(GHSSavedAddressListFragment.this) != null))
        {
          GHSSavedAddressListFragment.e(GHSSavedAddressListFragment.this).a(paramGHSIAddressDataModel, GHSSavedAddressListFragment.i(GHSSavedAddressListFragment.this), true, GHSSavedAddressListFragment.j(GHSSavedAddressListFragment.this));
          return;
        }
        com.grubhub.AppBaseLibrary.android.c.a(getActivity(), paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), null, null, getString(2131231717), GHSSavedAddressListFragment.this);
        GHSSavedAddressListFragment.g(GHSSavedAddressListFragment.this, true);
      }
    });
    z.a();
  }
  
  private void b(String paramString)
  {
    if (n)
    {
      t = paramString;
      if (B != null) {
        B.a(t);
      }
      if (v != null) {
        v.c(t);
      }
    }
  }
  
  private void b(boolean paramBoolean)
  {
    if (getView() != null) {
      a().setEnabled(paramBoolean);
    }
  }
  
  private void c(String paramString)
  {
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("user account settings", "address_delete", paramString));
  }
  
  public void a(DialogInterface paramDialogInterface)
  {
    r = false;
  }
  
  public void a(DialogInterface paramDialogInterface, int paramInt) {}
  
  public void a(String paramString)
  {
    b(paramString);
    if (B != null) {
      B.a(GHSApplication.a().b().R());
    }
  }
  
  public void b(DialogInterface paramDialogInterface, int paramInt) {}
  
  public void c(DialogInterface paramDialogInterface, int paramInt)
  {
    r = false;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((getParentFragment() instanceof i)) {
      v = ((i)getParentFragment());
    }
    while (!(paramActivity instanceof i)) {
      return;
    }
    v = ((i)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    t = getArguments().getString("selected_id");
    n = getArguments().getBoolean("selectable_addresses");
    o = getArguments().getBoolean("cross_street_required");
    u = getArguments().getString("deliver_to_restaurant_id");
    p = getArguments().getBoolean("retain_delivery_radius_spinner");
    q = getArguments().getBoolean("display_pickup_option");
    k = (-getResources().getDimensionPixelSize(2131427415) * 2);
    s = GHSApplication.a().b().R();
    B = new j(this, s, t);
    a(B);
    setHasOptionsMenu(true);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131820545, paramMenu);
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = paramLayoutInflater.inflate(2130903155, null);
    B.notifyDataSetChanged();
    if (q)
    {
      paramBundle = (ListView)paramViewGroup.findViewById(16908298);
      paramLayoutInflater = paramLayoutInflater.inflate(2130903195, null);
      paramLayoutInflater.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (GHSSavedAddressListFragment.e(GHSSavedAddressListFragment.this) != null) {
            GHSSavedAddressListFragment.e(GHSSavedAddressListFragment.this).h();
          }
        }
      });
      paramBundle.addFooterView(paramLayoutInflater);
    }
    return paramViewGroup;
  }
  
  public void onDetach()
  {
    super.onDetach();
    v = null;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    int i1 = paramMenuItem.getItemId();
    if (i1 == 16908332)
    {
      paramMenuItem = getActivity();
      if ((paramMenuItem instanceof GHSBaseActivity)) {
        ((GHSBaseActivity)paramMenuItem).b(getClass().getSimpleName());
      }
      return true;
    }
    if (i1 == 2131690346)
    {
      if (v != null) {
        v.a(o, u);
      }
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    q localq = getActivity();
    localq.getActionBar().setDisplayHomeAsUpEnabled(true);
    paramMenu = paramMenu.findItem(2131690345);
    if (paramMenu != null) {
      paramMenu.setVisible(false);
    }
    if ((localq instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)localq).b(2131230869);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    r = false;
  }
  
  public void onStart()
  {
    super.onStart();
    if (!m)
    {
      w = new com.grubhub.AppBaseLibrary.android.dataServices.a.i.b(getActivity(), new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
      {
        public void a()
        {
          if ((getActivity() instanceof GHSBaseActivity)) {
            ((GHSBaseActivity)getActivity()).a(true);
          }
        }
      }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
      {
        public void a()
        {
          if ((getActivity() instanceof GHSBaseActivity)) {
            ((GHSBaseActivity)getActivity()).a(false);
          }
          GHSSavedAddressListFragment.a(GHSSavedAddressListFragment.this, null);
        }
      });
      w.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(ArrayList<GHSIAddressDataModel> paramAnonymousArrayList)
        {
          boolean bool = true;
          GHSSavedAddressListFragment.a(GHSSavedAddressListFragment.this, paramAnonymousArrayList);
          GHSSavedAddressListFragment.f(GHSSavedAddressListFragment.this).a(paramAnonymousArrayList);
          a(GHSSavedAddressListFragment.f(GHSSavedAddressListFragment.this));
          GHSSavedAddressListFragment.f(GHSSavedAddressListFragment.this).notifyDataSetChanged();
          GHSSavedAddressListFragment.d(GHSSavedAddressListFragment.this, true);
          paramAnonymousArrayList = GHSSavedAddressListFragment.this;
          if (GHSSavedAddressListFragment.f(GHSSavedAddressListFragment.this).getCount() == 0) {}
          for (;;)
          {
            GHSSavedAddressListFragment.e(paramAnonymousArrayList, bool);
            return;
            bool = false;
          }
        }
      });
      w.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          boolean bool = true;
          GHSSavedAddressListFragment.d(GHSSavedAddressListFragment.this, true);
          paramAnonymousb = GHSSavedAddressListFragment.this;
          if (GHSSavedAddressListFragment.f(GHSSavedAddressListFragment.this).getCount() == 0) {}
          for (;;)
          {
            GHSSavedAddressListFragment.e(paramAnonymousb, bool);
            return;
            bool = false;
          }
        }
      });
      w.a();
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, com.grubhub.AppBaseLibrary.android.utils.c.f.USER_ACCOUNT_INFO, "saved addresses"));
      return;
    }
    if (B.getCount() == 0) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      break;
    }
  }
  
  public void onStop()
  {
    super.onStop();
    if (w != null)
    {
      w.g();
      w = null;
    }
    if (x != null)
    {
      x.g();
      x = null;
    }
    if (y != null)
    {
      y.g();
      y = null;
    }
    if (z != null)
    {
      z.g();
      z = null;
    }
    b(true);
    if ((getActivity() instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)getActivity()).a(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSSavedAddressListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */