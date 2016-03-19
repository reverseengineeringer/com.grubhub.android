package com.grubhub.AppBaseLibrary.android.order.pastOrders;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.q;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.a.b.o;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSDeliveryInfoDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSReorderDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.order.l;
import com.grubhub.AppBaseLibrary.android.views.GHSButton;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import com.grubhub.AppBaseLibrary.android.views.GHSTextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class GHSPastOrdersViewFragment
  extends Fragment
{
  private a a;
  private g b;
  private GHSLoadingViewFlipper c;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.c d;
  private GHSIRestaurantDataModel e;
  private GHSICartDataModel f;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.e.d g;
  private h h;
  private o i;
  
  public static GHSPastOrdersViewFragment a(Parcelable paramParcelable)
  {
    GHSPastOrdersViewFragment localGHSPastOrdersViewFragment = new GHSPastOrdersViewFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("restaurant_id", paramParcelable);
    localBundle.putSerializable("PAST_ORDER_CAPABILITIES", a((GHSIPastOrderDataModel)paramParcelable));
    localGHSPastOrdersViewFragment.setArguments(localBundle);
    return localGHSPastOrdersViewFragment;
  }
  
  private static g a(GHSIPastOrderDataModel paramGHSIPastOrderDataModel)
  {
    if (paramGHSIPastOrderDataModel.hasOrderItems()) {
      return g.PAST_ORDER_CAPABILITIES_REORDERABLE;
    }
    if (paramGHSIPastOrderDataModel.getRestaurantId() == null) {
      return g.PAST_ORDER_CAPABILITIES_NOT_MUCH_WE_CAN_DO;
    }
    return g.PAST_ORDER_CAPABILITIES_MENU_ONLY;
  }
  
  private void a(Context paramContext, final GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    i = new o(paramContext, false, new GHSDeliveryInfoDataModel(paramGHSIAddressDataModel), new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        GHSPastOrdersViewFragment.b(GHSPastOrdersViewFragment.this);
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSPastOrdersViewFragment.e(GHSPastOrdersViewFragment.this);
        GHSPastOrdersViewFragment.a(GHSPastOrdersViewFragment.this, null);
      }
    });
    i.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        if (paramAnonymousGHSICartDataModel != null)
        {
          paramAnonymousGHSICartDataModel = GHSApplication.a().b();
          paramAnonymousGHSICartDataModel.a(paramGHSIAddressDataModel);
          if (GHSPastOrdersViewFragment.d(GHSPastOrdersViewFragment.this) != null) {
            GHSPastOrdersViewFragment.d(GHSPastOrdersViewFragment.this).a();
          }
          paramAnonymousGHSICartDataModel.k(false);
        }
      }
    });
    i.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        com.grubhub.AppBaseLibrary.android.c.a(getActivity(), paramAnonymousb.f(), paramAnonymousb.getMessage(), null, null, getString(2131231717), null);
      }
    });
    i.a();
  }
  
  private void a(final Context paramContext, GHSIPastOrderDataModel paramGHSIPastOrderDataModel, final GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    GHSReorderDataModel localGHSReorderDataModel;
    if ((paramGHSIPastOrderDataModel != null) && (e != null))
    {
      localGHSReorderDataModel = new GHSReorderDataModel();
      localGHSReorderDataModel.setOrderId(paramGHSIPastOrderDataModel.getOrderId());
      localGHSReorderDataModel.setRestaurantId(paramGHSIPastOrderDataModel.getRestaurantId());
      if ((e.offersDelivery()) && (b())) {
        break label153;
      }
    }
    label153:
    for (boolean bool = true;; bool = false)
    {
      localGHSReorderDataModel.setIsPickup(bool);
      localGHSReorderDataModel.setAddressDataModel(paramGHSIAddressDataModel);
      g = new com.grubhub.AppBaseLibrary.android.dataServices.a.e.d(paramContext, localGHSReorderDataModel, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
      {
        public void a()
        {
          GHSPastOrdersViewFragment.b(GHSPastOrdersViewFragment.this);
        }
      }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
      {
        public void a()
        {
          GHSPastOrdersViewFragment.a(GHSPastOrdersViewFragment.this, null);
        }
      });
      g.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
        {
          paramAnonymousGHSICartDataModel = GHSApplication.a().b();
          if (GHSPastOrdersViewFragment.c(GHSPastOrdersViewFragment.this) != null) {
            paramAnonymousGHSICartDataModel.b(GHSPastOrdersViewFragment.c(GHSPastOrdersViewFragment.this));
          }
          if (paramGHSIAddressDataModel != null)
          {
            GHSPastOrdersViewFragment.a(GHSPastOrdersViewFragment.this, paramContext, paramGHSIAddressDataModel);
            return;
          }
          paramAnonymousGHSICartDataModel.a(null);
          if (GHSPastOrdersViewFragment.d(GHSPastOrdersViewFragment.this) != null) {
            GHSPastOrdersViewFragment.d(GHSPastOrdersViewFragment.this).a();
          }
          paramAnonymousGHSICartDataModel.k(false);
          GHSPastOrdersViewFragment.e(GHSPastOrdersViewFragment.this);
        }
      });
      paramContext = g;
      g.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          q localq = getActivity();
          if (localq != null)
          {
            if (!paramAnonymousb.d()) {
              break label59;
            }
            com.grubhub.AppBaseLibrary.android.c.a(localq, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), paramAnonymousb.g(), paramAnonymousb.h(), paramAnonymousb.i(), new com.grubhub.AppBaseLibrary.android.b()
            {
              public void a(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                a.a();
              }
            });
          }
          for (;;)
          {
            GHSPastOrdersViewFragment.e(GHSPastOrdersViewFragment.this);
            return;
            label59:
            com.grubhub.AppBaseLibrary.android.c.a(localq, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), localq.getResources().getString(2131231717), null, null, null);
          }
        }
      });
      g.a();
      return;
    }
  }
  
  private void a(GHSIPastOrderDataModel paramGHSIPastOrderDataModel, h paramh)
  {
    
    if (b())
    {
      if (a != null) {
        if ((e == null) || (!e.isCrossStreetRequired())) {
          break label55;
        }
      }
      label55:
      for (boolean bool = true;; bool = false)
      {
        a.a(paramGHSIPastOrderDataModel.getRestaurantId(), bool);
        return;
      }
    }
    a(paramh, paramGHSIPastOrderDataModel.getOrderType(), null);
  }
  
  private void a(h paramh, com.grubhub.AppBaseLibrary.android.order.g paramg, GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    if (paramh != null)
    {
      paramh = (GHSIPastOrderDataModel)getArguments().getParcelable("restaurant_id");
      if (paramh != null)
      {
        if (!h.equals(h.PAST_ORDER_DESTINATION_RESTAURANT_MENU)) {
          break label59;
        }
        if (a != null) {
          a.a(paramh.getRestaurantId(), paramg, paramGHSIAddressDataModel);
        }
      }
    }
    return;
    label59:
    a(getActivity(), paramh, paramGHSIAddressDataModel);
  }
  
  private boolean a()
  {
    f = GHSApplication.a().b().X();
    return (f != null) && (f.getOrderItems() != null) && (f.getOrderItems().size() > 0);
  }
  
  private void b(GHSIPastOrderDataModel paramGHSIPastOrderDataModel)
  {
    if ((e != null) && (e.getRestaurantId().equals(paramGHSIPastOrderDataModel.getRestaurantId())))
    {
      f(paramGHSIPastOrderDataModel);
      c.b();
      return;
    }
    c(paramGHSIPastOrderDataModel);
  }
  
  private boolean b()
  {
    return ((GHSIPastOrderDataModel)getArguments().getParcelable("restaurant_id")).getOrderType() == com.grubhub.AppBaseLibrary.android.order.g.DELIVERY;
  }
  
  private void c()
  {
    q localq = getActivity();
    if ((localq != null) && ((localq instanceof GHSBaseActivity))) {
      ((GHSBaseActivity)getActivity()).a(true);
    }
  }
  
  private void c(final GHSIPastOrderDataModel paramGHSIPastOrderDataModel)
  {
    d = new com.grubhub.AppBaseLibrary.android.dataServices.a.c(getActivity(), paramGHSIPastOrderDataModel.getRestaurantId(), null, null, l.DEFAULT, null, true, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        GHSPastOrdersViewFragment.a(GHSPastOrdersViewFragment.this).a();
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSPastOrdersViewFragment.a(GHSPastOrdersViewFragment.this).b();
        GHSPastOrdersViewFragment.a(GHSPastOrdersViewFragment.this, null);
      }
    });
    d.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSIRestaurantDataModel paramAnonymousGHSIRestaurantDataModel)
      {
        if (paramAnonymousGHSIRestaurantDataModel != null)
        {
          GHSPastOrdersViewFragment.a(GHSPastOrdersViewFragment.this, paramAnonymousGHSIRestaurantDataModel);
          GHSPastOrdersViewFragment.a(GHSPastOrdersViewFragment.this, paramGHSIPastOrderDataModel);
          GHSPastOrdersViewFragment.a(GHSPastOrdersViewFragment.this).b();
        }
      }
    });
    final com.grubhub.AppBaseLibrary.android.dataServices.a.c localc = d;
    d.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        q localq = getActivity();
        if (localq != null)
        {
          if ((!paramAnonymousb.d()) && ((paramAnonymousb.c() == com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_RESTAURANT_CONTENT_NOT_FOUND) || (paramAnonymousb.c() == com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_RESTAURANT_CONTENT_NOT_PREMIUM_CUSTOMER)))
          {
            GHSPastOrdersViewFragment.a(GHSPastOrdersViewFragment.this, g.PAST_ORDER_CAPABILITIES_NOT_MUCH_WE_CAN_DO);
            GHSPastOrdersViewFragment.a(GHSPastOrdersViewFragment.this, paramGHSIPastOrderDataModel);
          }
        }
        else {
          return;
        }
        com.grubhub.AppBaseLibrary.android.c.a(localq, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), paramAnonymousb.g(), paramAnonymousb.h(), paramAnonymousb.i(), new com.grubhub.AppBaseLibrary.android.d()
        {
          public void a(DialogInterface paramAnonymous2DialogInterface) {}
          
          public void a(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            b.a();
          }
          
          public void b(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            paramAnonymous2DialogInterface = getActivity();
            if (paramAnonymous2DialogInterface != null) {
              paramAnonymous2DialogInterface.onBackPressed();
            }
          }
          
          public void c(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            paramAnonymous2DialogInterface = getActivity();
            if (paramAnonymous2DialogInterface != null) {
              paramAnonymous2DialogInterface.onBackPressed();
            }
          }
        });
      }
    });
    d.a();
  }
  
  private void d()
  {
    q localq = getActivity();
    if ((localq != null) && ((localq instanceof GHSBaseActivity))) {
      ((GHSBaseActivity)getActivity()).a(false);
    }
  }
  
  private void d(GHSIPastOrderDataModel paramGHSIPastOrderDataModel)
  {
    h = h.PAST_ORDER_DESTINATION_RESTAURANT_MENU;
    if ((paramGHSIPastOrderDataModel != null) && (com.grubhub.AppBaseLibrary.android.utils.f.b(paramGHSIPastOrderDataModel.getRestaurantId()))) {
      a(h, paramGHSIPastOrderDataModel.getOrderType(), null);
    }
  }
  
  private void e(final GHSIPastOrderDataModel paramGHSIPastOrderDataModel)
  {
    Object localObject = getActivity();
    if ((e != null) && (e.getRestaurantId().equals(paramGHSIPastOrderDataModel.getRestaurantId())))
    {
      h = h.PAST_ORDER_DESTINATION_ADD_TO_BAG;
      if (!e.isPhoneOnly()) {
        break label139;
      }
      paramGHSIPastOrderDataModel = e.getRestaurantPhoneNumber();
      if (paramGHSIPastOrderDataModel != null)
      {
        if (!GHSApplication.n()) {
          break label119;
        }
        paramGHSIPastOrderDataModel = "tel: " + paramGHSIPastOrderDataModel;
        localObject = new Intent("android.intent.action.DIAL");
        ((Intent)localObject).setData(Uri.parse(paramGHSIPastOrderDataModel));
        startActivity((Intent)localObject);
      }
    }
    return;
    label119:
    com.grubhub.AppBaseLibrary.android.c.a(getActivity(), 2131231322, 2131231321, 0, 0, 2131231717, null);
    return;
    label139:
    if (a())
    {
      com.grubhub.AppBaseLibrary.android.c.a((Context)localObject, 2131231744, 2131231742, 2131232071, 2131231711, 0, new com.grubhub.AppBaseLibrary.android.b()
      {
        public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          GHSPastOrdersViewFragment.a(GHSPastOrdersViewFragment.this, paramGHSIPastOrderDataModel, h.PAST_ORDER_DESTINATION_ADD_TO_BAG);
        }
      });
      return;
    }
    a(paramGHSIPastOrderDataModel, h.PAST_ORDER_DESTINATION_ADD_TO_BAG);
  }
  
  private void f(final GHSIPastOrderDataModel paramGHSIPastOrderDataModel)
  {
    View localView = getView();
    GHSTextView localGHSTextView;
    GHSButton localGHSButton;
    LinearLayout localLinearLayout;
    if (localView != null)
    {
      localGHSTextView = (GHSTextView)localView.findViewById(2131689951);
      localGHSButton = (GHSButton)localView.findViewById(2131689957);
      localLinearLayout = (LinearLayout)localView.findViewById(2131689956);
      if (!b.equals(g.PAST_ORDER_CAPABILITIES_NOT_MUCH_WE_CAN_DO)) {
        break label83;
      }
      localGHSButton.setVisibility(8);
      localLinearLayout.setVisibility(8);
      localView.findViewById(2131689954).setVisibility(0);
    }
    label83:
    do
    {
      do
      {
        do
        {
          return;
          if (!b.equals(g.PAST_ORDER_CAPABILITIES_MENU_ONLY)) {
            break;
          }
          localGHSButton.setText(2131231741);
          localLinearLayout.setVisibility(0);
          localGHSButton.setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymousView)
            {
              GHSPastOrdersViewFragment.b(GHSPastOrdersViewFragment.this, paramGHSIPastOrderDataModel);
            }
          });
          if (localGHSTextView != null) {
            localGHSTextView.setOnClickListener(new View.OnClickListener()
            {
              public void onClick(View paramAnonymousView)
              {
                GHSPastOrdersViewFragment.b(GHSPastOrdersViewFragment.this, paramGHSIPastOrderDataModel);
              }
            });
          }
          paramGHSIPastOrderDataModel = localView.findViewById(2131689955);
          if (paramGHSIPastOrderDataModel != null) {
            paramGHSIPastOrderDataModel.setVisibility(0);
          }
          paramGHSIPastOrderDataModel = localView.findViewById(2131689958);
        } while (paramGHSIPastOrderDataModel == null);
        paramGHSIPastOrderDataModel.setVisibility(8);
        return;
      } while (!b.equals(g.PAST_ORDER_CAPABILITIES_REORDERABLE));
      localGHSButton.setText(2131231739);
      localLinearLayout.setVisibility(0);
      localGHSButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          GHSPastOrdersViewFragment.c(GHSPastOrdersViewFragment.this, paramGHSIPastOrderDataModel);
        }
      });
    } while (localGHSTextView == null);
    localGHSTextView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSPastOrdersViewFragment.b(GHSPastOrdersViewFragment.this, paramGHSIPastOrderDataModel);
      }
    });
  }
  
  public void a(String paramString)
  {
    Object localObject = GHSApplication.a().b().R();
    if (localObject != null)
    {
      Iterator localIterator = ((ArrayList)localObject).iterator();
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        localObject = (GHSIAddressDataModel)localIterator.next();
      } while ((localObject == null) || (paramString == null) || (!paramString.equals(((GHSIAddressDataModel)localObject).getId())));
    }
    for (paramString = (String)localObject;; paramString = null)
    {
      if (b()) {}
      for (localObject = com.grubhub.AppBaseLibrary.android.order.g.DELIVERY;; localObject = com.grubhub.AppBaseLibrary.android.order.g.PICKUP)
      {
        a(h, (com.grubhub.AppBaseLibrary.android.order.g)localObject, paramString);
        return;
      }
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof a)) {
      a = ((a)paramActivity);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      h = ((h)paramBundle.getSerializable("buttonPressedDestination"));
    }
    setHasOptionsMenu(true);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramBundle = paramLayoutInflater.inflate(2130903139, paramViewGroup, false);
    c = ((GHSLoadingViewFlipper)paramBundle.findViewById(2131689948));
    GHSIPastOrderDataModel localGHSIPastOrderDataModel = (GHSIPastOrderDataModel)getArguments().getParcelable("restaurant_id");
    b = ((g)getArguments().getSerializable("PAST_ORDER_CAPABILITIES"));
    f = GHSApplication.a().b().X();
    paramLayoutInflater = (GHSTextView)paramBundle.findViewById(2131689951);
    if (paramLayoutInflater != null) {
      paramLayoutInflater.setText(localGHSIPastOrderDataModel.getRestaurantName());
    }
    paramLayoutInflater = (GHSTextView)paramBundle.findViewById(2131689952);
    if (paramLayoutInflater != null) {
      paramLayoutInflater.setText(localGHSIPastOrderDataModel.getTimePlacedString());
    }
    GHSTextView localGHSTextView = (GHSTextView)paramBundle.findViewById(2131689953);
    paramLayoutInflater = getString(2131231745);
    paramViewGroup = getString(2131231748);
    if (b()) {}
    for (;;)
    {
      localGHSTextView.setText(paramLayoutInflater);
      if (localGHSIPastOrderDataModel.hasOrderItems()) {
        ((ListView)paramBundle.findViewById(2131689958)).setAdapter(new i(this, getActivity(), 2130903191, localGHSIPastOrderDataModel.getPastOrderItemList(), null));
      }
      GHSApplication.a().b().k(true);
      return paramBundle;
      paramLayoutInflater = paramViewGroup;
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    a = null;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      paramMenuItem = getActivity();
      if ((paramMenuItem instanceof GHSBaseActivity)) {
        ((GHSBaseActivity)paramMenuItem).b(getClass().getSimpleName());
      }
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
      ((GHSBaseActivity)paramMenu).b(2131230859);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    b((GHSIPastOrderDataModel)getArguments().getParcelable("restaurant_id"));
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putSerializable("buttonPressedDestination", h);
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onStart()
  {
    super.onStart();
    HashMap localHashMap = new HashMap();
    localHashMap.put("RestaurantID", ((GHSIPastOrderDataModel)getArguments().getParcelable("restaurant_id")).getRestaurantId());
    com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(localHashMap);
    com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, com.grubhub.AppBaseLibrary.android.utils.c.f.USER_ACCOUNT_INFO, "order history meal detail"));
  }
  
  public void onStop()
  {
    super.onStop();
    if (d != null)
    {
      d.g();
      d = null;
    }
    if (g != null)
    {
      g.g();
      g = null;
    }
    if (i != null)
    {
      i.g();
      i = null;
    }
    if (c != null) {
      c.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.pastOrders.GHSPastOrdersViewFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */