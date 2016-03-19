package com.grubhub.AppBaseLibrary.android.order.search;

import android.app.ActionBar;
import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.telephony.PhoneNumberUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.a;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel.GHSIDateTime;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.order.j;
import com.grubhub.AppBaseLibrary.android.utils.c.b;
import com.grubhub.AppBaseLibrary.android.utils.c.e;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import com.grubhub.AppBaseLibrary.android.views.GHSTextView;
import java.util.ArrayList;
import java.util.Iterator;

public class GHSRestaurantDetailsFragment
  extends Fragment
  implements a
{
  private String a;
  private g b;
  private f c;
  private GHSLoadingViewFlipper d;
  private LinearLayout e;
  private GHSTextView f;
  private GHSTextView g;
  private GHSIRestaurantDataModel h;
  
  public static GHSRestaurantDetailsFragment a(String paramString, g paramg)
  {
    GHSRestaurantDetailsFragment localGHSRestaurantDetailsFragment = new GHSRestaurantDetailsFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("restaurant_id", paramString);
    localBundle.putSerializable("order_type", paramg);
    localGHSRestaurantDetailsFragment.setArguments(localBundle);
    return localGHSRestaurantDetailsFragment;
  }
  
  private void d()
  {
    Object localObject1;
    View localView;
    int j;
    int i;
    label134:
    String str;
    if (h != null) {
      if (e != null)
      {
        e.removeAllViews();
        localObject1 = h.getHoursOfOperation(b);
        if ((localObject1 != null) && (!((ArrayList)localObject1).isEmpty()))
        {
          Iterator localIterator = ((ArrayList)localObject1).iterator();
          for (;;)
          {
            if (localIterator.hasNext())
            {
              GHSIRestaurantDataModel.GHSIDateTime localGHSIDateTime = (GHSIRestaurantDataModel.GHSIDateTime)localIterator.next();
              if (localGHSIDateTime != null)
              {
                localView = LayoutInflater.from(e.getContext()).inflate(2130903192, null);
                ((GHSTextView)localView.findViewById(2131690232)).setText(localGHSIDateTime.getDayOfWeekString());
                if (localGHSIDateTime.getTimeRanges() != null)
                {
                  localObject1 = "";
                  j = 0;
                  i = 0;
                  if (j < localGHSIDateTime.getTimeRanges().size())
                  {
                    str = (String)localGHSIDateTime.getTimeRanges().get(j);
                    if (str.equalsIgnoreCase(getString(2131231942))) {
                      i = 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    for (;;)
    {
      j += 1;
      break label134;
      if (!str.equals(getString(2131231946)))
      {
        Object localObject2 = localObject1;
        if (((String)localObject1).length() > 0) {
          localObject2 = (String)localObject1 + ",\n";
        }
        localObject1 = (String)localObject2 + str;
        continue;
        localObject2 = localObject1;
        if (i != 0)
        {
          localObject2 = localObject1;
          if (((String)localObject1).length() == 0) {
            localObject2 = getString(2131231942);
          }
        }
        ((GHSTextView)localView.findViewById(2131690233)).setText((CharSequence)localObject2);
        e.addView(localView);
        break;
        if (f != null) {
          f.setText(j.a(h.getRestaurantAddress()));
        }
        if ((g != null) && (h != null) && (h.getRestaurantPhoneNumber() != null)) {
          g.setText(PhoneNumberUtils.formatNumber(h.getRestaurantPhoneNumber()));
        }
        return;
      }
    }
  }
  
  public void a(GHSIRestaurantDataModel paramGHSIRestaurantDataModel)
  {
    h = paramGHSIRestaurantDataModel;
    d();
    d.b();
  }
  
  public void b() {}
  
  public void c() {}
  
  public boolean f_()
  {
    if (c != null) {
      c.j();
    }
    return true;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    Fragment localFragment = getParentFragment();
    if ((localFragment != null) && ((localFragment instanceof f))) {
      c = ((f)getParentFragment());
    }
    while (!(paramActivity instanceof f)) {
      return;
    }
    c = ((f)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903147, null, false);
    d = ((GHSLoadingViewFlipper)paramLayoutInflater.findViewById(2131690041));
    e = ((LinearLayout)paramLayoutInflater.findViewById(2131690043));
    f = ((GHSTextView)paramLayoutInflater.findViewById(2131690045));
    g = ((GHSTextView)paramLayoutInflater.findViewById(2131690046));
    a = getArguments().getString("restaurant_id");
    b = ((g)getArguments().getSerializable("order_type"));
    if (c != null) {
      h = c.n();
    }
    if (h != null)
    {
      d();
      d.b();
    }
    return paramLayoutInflater;
  }
  
  public void onDetach()
  {
    super.onDetach();
    c = null;
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu = paramMenu.findItem(2131690345);
    if (paramMenu != null) {
      paramMenu.setVisible(false);
    }
    paramMenu = getActivity();
    paramMenu.getActionBar().setDisplayHomeAsUpEnabled(true);
    if ((paramMenu instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)paramMenu).b(2131230866);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    h.a().a(new b(e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_DETAILS, "restaurant info", a, null));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSRestaurantDetailsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */