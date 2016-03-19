package com.grubhub.AppBaseLibrary.android.order.search;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.RotateAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnChildClickListener;
import android.widget.ExpandableListView.OnGroupClickListener;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.a.b.n;
import com.grubhub.AppBaseLibrary.android.dataServices.a.b.o;
import com.grubhub.AppBaseLibrary.android.dataServices.a.b.s;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSDeliveryInfoDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSMenuItemUpdateModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSMenuItemUpdateModel.GHSCartOptionsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPickupInfoDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIOrderItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIChoiceGroup;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIOption;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMenuItemUpdateModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMenuItemUpdateModel.GHSICartOptions;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.order.GHSOutOfRangeDialog;
import com.grubhub.AppBaseLibrary.android.order.cart.GHSUpdateCartTimeDialogFragment;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.order.l;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public class GHSMenuItemFragment
  extends Fragment
  implements com.grubhub.AppBaseLibrary.android.a, com.grubhub.AppBaseLibrary.android.order.cart.q, com.grubhub.AppBaseLibrary.android.order.h
{
  private static final String a = GHSMenuItemFragment.class.getSimpleName();
  private static final String b = a + ".AddItemOverlay";
  private com.grubhub.AppBaseLibrary.android.dataServices.a.e A;
  private GHSLoadingViewFlipper B;
  private ViewGroup C;
  private ExpandableListView D;
  private e E;
  private View F;
  private EditText G;
  private Button H;
  private View I;
  private EditText J;
  private String c;
  private GHSIRestaurantDataModel d;
  private boolean e;
  private boolean f;
  private GHSIAddressDataModel g;
  private g h;
  private GHSIFoodMenuDataModel.GHSIMenuItem i;
  private String j;
  private ArrayList<GHSIFoodMenuDataModel.GHSIChoiceGroup> k;
  private ArrayList<GHSIFoodMenuDataModel.GHSIChoiceGroup> l;
  private HashMap<String, ArrayList<String>> m;
  private int n = 1;
  private String o;
  private boolean p;
  private f q;
  private GHSFilterSortCriteria r;
  private GHSICartDataModel s;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.b t;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.b.e u;
  private o v;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.b.p w;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.b.b x;
  private s y;
  private n z;
  
  private float a(int paramInt)
  {
    float f1 = 0.0F;
    if (i != null) {
      if (i.getMenuItemPrice() == null) {
        break label61;
      }
    }
    label61:
    for (f1 = i.getMenuItemPrice().floatValue();; f1 = 0.0F)
    {
      f1 = 0.0F + f1;
      return (a(k) + f1 + a(l)) * paramInt;
    }
  }
  
  private float a(List<GHSIFoodMenuDataModel.GHSIChoiceGroup> paramList)
  {
    float f2 = 0.0F;
    float f1 = f2;
    if (m != null)
    {
      f1 = f2;
      if (paramList != null)
      {
        paramList = paramList.iterator();
        label236:
        for (f1 = 0.0F; paramList.hasNext(); f1 = f2)
        {
          GHSIFoodMenuDataModel.GHSIChoiceGroup localGHSIChoiceGroup = (GHSIFoodMenuDataModel.GHSIChoiceGroup)paramList.next();
          f2 = f1;
          if (m.containsKey(localGHSIChoiceGroup.getChoiceId()))
          {
            List localList = (List)m.get(Integer.toString(localGHSIChoiceGroup.getItemVariationId()));
            Iterator localIterator1 = ((ArrayList)m.get(localGHSIChoiceGroup.getChoiceId())).iterator();
            GHSIFoodMenuDataModel.GHSIOption localGHSIOption;
            for (;;)
            {
              f2 = f1;
              if (!localIterator1.hasNext()) {
                break label236;
              }
              localGHSIOption = localGHSIChoiceGroup.getOptionById((String)localIterator1.next());
              if (localList != null) {
                break;
              }
              if (localGHSIOption.getOptionPrice() != null) {
                f1 += localGHSIOption.getOptionPrice().floatValue();
              }
            }
            Iterator localIterator2 = localList.iterator();
            f2 = f1;
            for (;;)
            {
              f1 = f2;
              if (!localIterator2.hasNext()) {
                break;
              }
              String str = (String)localIterator2.next();
              if (localGHSIOption.getVariationalPrice(str) != null) {
                f2 += localGHSIOption.getVariationalPrice(str).floatValue();
              }
            }
          }
        }
      }
    }
    return f1;
  }
  
  public static GHSMenuItemFragment a(String paramString1, String paramString2, GHSIAddressDataModel paramGHSIAddressDataModel, g paramg, boolean paramBoolean1, boolean paramBoolean2, String paramString3, String paramString4)
  {
    GHSMenuItemFragment localGHSMenuItemFragment = new GHSMenuItemFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("restaurant_id", paramString1);
    localBundle.putString("item_id", paramString2);
    localBundle.putParcelable("search_address", com.grubhub.AppBaseLibrary.android.order.a.a(paramGHSIAddressDataModel));
    localBundle.putSerializable("order_type", paramg);
    localBundle.putBoolean("delivery_radius_check", paramBoolean1);
    localBundle.putBoolean("restaurant_phone_only", paramBoolean2);
    localBundle.putString("restaurant_phone_number", paramString3);
    localBundle.putString("old_item_id", paramString4);
    localGHSMenuItemFragment.setArguments(localBundle);
    return localGHSMenuItemFragment;
  }
  
  private void a(final Context paramContext)
  {
    Object localObject1 = new GHSMenuItemUpdateModel();
    ((GHSIMenuItemUpdateModel)localObject1).setRestaurantId(d.getRestaurantId());
    ((GHSIMenuItemUpdateModel)localObject1).setMenuItemId(i.getMenuItemId());
    ((GHSIMenuItemUpdateModel)localObject1).setQuantity(n);
    ((GHSIMenuItemUpdateModel)localObject1).setSpecialInstructions(o);
    ((GHSIMenuItemUpdateModel)localObject1).setApplyFreeGrub(Boolean.valueOf(false));
    final Object localObject2 = new ArrayList();
    Object localObject3 = m.keySet().iterator();
    while (((Iterator)localObject3).hasNext())
    {
      Object localObject4 = (String)((Iterator)localObject3).next();
      localObject4 = ((ArrayList)m.get(localObject4)).iterator();
      while (((Iterator)localObject4).hasNext())
      {
        String str = (String)((Iterator)localObject4).next();
        GHSMenuItemUpdateModel.GHSCartOptionsModel localGHSCartOptionsModel = new GHSMenuItemUpdateModel.GHSCartOptionsModel();
        localGHSCartOptionsModel.setId(str);
        ((ArrayList)localObject2).add(localGHSCartOptionsModel);
      }
    }
    ((GHSIMenuItemUpdateModel)localObject1).setOptions((List)localObject2);
    localObject2 = getActivity();
    y = new s(paramContext, s.getCartId(), getArguments().getString("old_item_id"), (GHSIMenuItemUpdateModel)localObject1, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        GHSMenuItemFragment.t(GHSMenuItemFragment.this);
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSMenuItemFragment.u(GHSMenuItemFragment.this);
        GHSMenuItemFragment.a(GHSMenuItemFragment.this, null);
      }
    });
    y.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        GHSMenuItemFragment.a(GHSMenuItemFragment.this, true);
      }
    });
    y.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        if (localObject2 != null) {
          c.a(localObject2, paramAnonymousb.f(), paramAnonymousb.getMessage(), localObject2.getResources().getString(2131231717), null, null, null);
        }
      }
    });
    if (i())
    {
      localObject1 = new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_MENU_QUANTITY_CHANGE_DROPS_BELOW_COUPON_MIN_ORDER);
      c.a((Context)localObject2, ((com.grubhub.AppBaseLibrary.android.b.b)localObject1).f(), ((com.grubhub.AppBaseLibrary.android.b.b)localObject1).getLocalizedMessage(), ((com.grubhub.AppBaseLibrary.android.b.b)localObject1).g(), ((com.grubhub.AppBaseLibrary.android.b.b)localObject1).h(), ((com.grubhub.AppBaseLibrary.android.b.b)localObject1).i(), new com.grubhub.AppBaseLibrary.android.b()
      {
        public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          GHSMenuItemFragment.a(GHSMenuItemFragment.this, paramContext, GHSMenuItemFragment.z(GHSMenuItemFragment.this));
        }
      });
      localObject1 = com.grubhub.AppBaseLibrary.android.utils.c.h.a();
      localObject2 = com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP;
      localObject3 = com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_DETAILS;
      if (d != null) {}
      for (paramContext = d.getRestaurantId();; paramContext = null)
      {
        ((com.grubhub.AppBaseLibrary.android.utils.c.h)localObject1).a(new com.grubhub.AppBaseLibrary.android.utils.c.b((com.grubhub.AppBaseLibrary.android.utils.c.e)localObject2, (com.grubhub.AppBaseLibrary.android.utils.c.f)localObject3, "cart change alert_lose coupon modal", paramContext, null));
        return;
      }
    }
    y.a();
  }
  
  private void a(Context paramContext, final com.grubhub.AppBaseLibrary.android.dataServices.a.a parama)
  {
    if ((s == null) || (s.getCoupon() == null)) {
      return;
    }
    z = new n(paramContext, s.getCoupon().getId(), new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        GHSMenuItemFragment.t(GHSMenuItemFragment.this);
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSMenuItemFragment.a(GHSMenuItemFragment.this, null);
      }
    });
    z.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        if (parama != null) {
          parama.a();
        }
        GHSMenuItemFragment.A(GHSMenuItemFragment.this);
      }
    });
    z.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        android.support.v4.app.q localq = getActivity();
        if (localq != null)
        {
          c.a(localq, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), paramAnonymousb.g(), paramAnonymousb.h(), paramAnonymousb.i(), null);
          GHSMenuItemFragment.u(GHSMenuItemFragment.this);
        }
        GHSMenuItemFragment.A(GHSMenuItemFragment.this);
      }
    });
    z.a();
  }
  
  private void a(final Context paramContext, final GHSIAddressDataModel paramGHSIAddressDataModel, final boolean paramBoolean)
  {
    if (d != null) {}
    for (final String str = d.getRestaurantId();; str = null)
    {
      A = new com.grubhub.AppBaseLibrary.android.dataServices.a.e(getActivity(), str, paramGHSIAddressDataModel.getLatitude(), paramGHSIAddressDataModel.getLongitude(), new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
      {
        public void a()
        {
          GHSMenuItemFragment.t(GHSMenuItemFragment.this);
        }
      }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
      {
        public void a()
        {
          GHSMenuItemFragment.a(GHSMenuItemFragment.this, null);
        }
      });
      A.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSIRestaurantAvailabilityDataModel paramAnonymousGHSIRestaurantAvailabilityDataModel)
        {
          if ((paramAnonymousGHSIRestaurantAvailabilityDataModel != null) && (paramAnonymousGHSIRestaurantAvailabilityDataModel.getSummary(str) != null))
          {
            if (paramAnonymousGHSIRestaurantAvailabilityDataModel.getSummary(str).offersDeliveryToDinerLocation())
            {
              if ((paramBoolean) || (GHSMenuItemFragment.m(GHSMenuItemFragment.this) == null))
              {
                GHSMenuItemFragment.b(GHSMenuItemFragment.this, paramContext, paramBoolean);
                return;
              }
              GHSMenuItemFragment.c(GHSMenuItemFragment.this, paramContext, paramBoolean);
              return;
            }
            if (GHSMenuItemFragment.k(GHSMenuItemFragment.this) != null) {
              GHSOutOfRangeDialog.a(GHSMenuItemFragment.k(GHSMenuItemFragment.this).getRestaurantId(), GHSMenuItemFragment.k(GHSMenuItemFragment.this).getRestaurantName(), GHSMenuItemFragment.k(GHSMenuItemFragment.this).offersPickup(), paramGHSIAddressDataModel, com.grubhub.AppBaseLibrary.android.order.i.ADD_ITEM, "restaurant menu item").show(getChildFragmentManager(), GHSOutOfRangeDialog.class.getSimpleName());
            }
            for (;;)
            {
              GHSMenuItemFragment.u(GHSMenuItemFragment.this);
              return;
              paramAnonymousGHSIRestaurantAvailabilityDataModel = new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA);
              c.a(getActivity(), paramAnonymousGHSIRestaurantAvailabilityDataModel.f(), paramAnonymousGHSIRestaurantAvailabilityDataModel.getLocalizedMessage(), null, null, getString(2131231717), null);
            }
          }
          paramAnonymousGHSIRestaurantAvailabilityDataModel = new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN);
          c.a(getActivity(), paramAnonymousGHSIRestaurantAvailabilityDataModel.f(), paramAnonymousGHSIRestaurantAvailabilityDataModel.getLocalizedMessage(), null, null, getString(2131231717), null);
          GHSMenuItemFragment.u(GHSMenuItemFragment.this);
        }
      });
      A.a(new d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          c.a(getActivity(), paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), null, null, getString(2131231717), null);
          GHSMenuItemFragment.u(GHSMenuItemFragment.this);
        }
      });
      A.a();
      return;
    }
  }
  
  private void a(Context paramContext, boolean paramBoolean)
  {
    o = G.getText().toString();
    if (getArguments().getString("old_item_id", null) == null)
    {
      if ((e) && (g != null) && (h == g.DELIVERY))
      {
        a(paramContext, g, paramBoolean);
        return;
      }
      if ((paramBoolean) || (s == null))
      {
        b(paramContext, paramBoolean);
        return;
      }
      e(paramContext, paramBoolean);
      return;
    }
    a(paramContext);
  }
  
  private void a(View paramView, int paramInt, final boolean paramBoolean)
  {
    if (paramView != null)
    {
      Animation localAnimation = AnimationUtils.loadAnimation(paramView.getContext(), 17432576);
      localAnimation.setInterpolator(new DecelerateInterpolator(2.0F));
      localAnimation.setDuration(paramInt);
      localAnimation.setAnimationListener(new Animation.AnimationListener()
      {
        public void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          GHSMenuItemFragment.a(GHSMenuItemFragment.this, paramBoolean);
        }
        
        public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public void onAnimationStart(Animation paramAnonymousAnimation) {}
      });
      paramView.setAnimation(localAnimation);
      paramView.setVisibility(0);
    }
  }
  
  private void a(final String paramString1, String paramString2)
  {
    t = new com.grubhub.AppBaseLibrary.android.dataServices.a.b(getActivity(), paramString1, paramString2, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        GHSMenuItemFragment.q(GHSMenuItemFragment.this).a();
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSMenuItemFragment.a(GHSMenuItemFragment.this, null);
      }
    });
    paramString1 = t;
    t.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSIFoodMenuDataModel.GHSIMenuItem paramAnonymousGHSIMenuItem)
      {
        GHSMenuItemFragment.a(GHSMenuItemFragment.this, paramAnonymousGHSIMenuItem);
        if (GHSMenuItemFragment.r(GHSMenuItemFragment.this) != null)
        {
          GHSMenuItemFragment.s(GHSMenuItemFragment.this);
          e();
          GHSMenuItemFragment.q(GHSMenuItemFragment.this).b();
          return;
        }
        paramAnonymousGHSIMenuItem = new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN);
        GHSMenuItemFragment.q(GHSMenuItemFragment.this).a(paramAnonymousGHSIMenuItem.getLocalizedMessage(), new View.OnClickListener()
        {
          public void onClick(View paramAnonymous2View)
          {
            a.a();
          }
        });
      }
    });
    t.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        GHSMenuItemFragment.q(GHSMenuItemFragment.this).a(paramAnonymousb.getMessage(), new View.OnClickListener()
        {
          public void onClick(View paramAnonymous2View)
          {
            a.a();
          }
        });
      }
    });
    t.a();
  }
  
  private void a(final boolean paramBoolean)
  {
    if (!p)
    {
      RotateAnimation localRotateAnimation = new RotateAnimation(0.0F, 15.0F, C.getWidth() / 2, C.getHeight() * 2);
      localRotateAnimation.setInterpolator(new AccelerateInterpolator());
      localRotateAnimation.setDuration(250L);
      localRotateAnimation.setAnimationListener(new Animation.AnimationListener()
      {
        public void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          if (GHSMenuItemFragment.C(GHSMenuItemFragment.this) != null)
          {
            if (paramBoolean) {
              GHSMenuItemFragment.C(GHSMenuItemFragment.this).l();
            }
            GHSMenuItemFragment.C(GHSMenuItemFragment.this).i();
          }
          GHSMenuItemFragment.b(GHSMenuItemFragment.this, false);
          GHSMenuItemFragment.B(GHSMenuItemFragment.this);
        }
        
        public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public void onAnimationStart(Animation paramAnonymousAnimation)
        {
          GHSMenuItemFragment.b(GHSMenuItemFragment.this, true);
        }
      });
      C.startAnimation(localRotateAnimation);
    }
  }
  
  private void b(final Context paramContext, final boolean paramBoolean)
  {
    l locall;
    if (r == null)
    {
      locall = l.DEFAULT;
      if (r != null) {
        break label104;
      }
    }
    label104:
    for (Long localLong = null;; localLong = Long.valueOf(r.getWhenFor()))
    {
      u = new com.grubhub.AppBaseLibrary.android.dataServices.a.b.e(paramContext, locall, localLong, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
      {
        public void a()
        {
          GHSMenuItemFragment.t(GHSMenuItemFragment.this);
        }
      }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
      {
        public void a()
        {
          GHSMenuItemFragment.a(GHSMenuItemFragment.this, null);
        }
      });
      u.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
        {
          GHSMenuItemFragment.a(GHSMenuItemFragment.this, paramAnonymousGHSICartDataModel);
          if (((GHSMenuItemFragment.k(GHSMenuItemFragment.this) != null) && (!GHSMenuItemFragment.k(GHSMenuItemFragment.this).offersDelivery())) || (GHSMenuItemFragment.v(GHSMenuItemFragment.this) == g.PICKUP))
          {
            GHSMenuItemFragment.d(GHSMenuItemFragment.this, paramContext, paramBoolean);
            return;
          }
          GHSMenuItemFragment.e(GHSMenuItemFragment.this, paramContext, paramBoolean);
        }
      });
      u.a(new d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          android.support.v4.app.q localq = getActivity();
          if (localq != null)
          {
            c.a(paramContext, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), localq.getResources().getString(2131231717), null, null, null);
            GHSMenuItemFragment.u(GHSMenuItemFragment.this);
          }
        }
      });
      u.a();
      return;
      locall = r.getSubOrderType();
      break;
    }
  }
  
  private void c(final Context paramContext, final boolean paramBoolean)
  {
    v = new o(paramContext, true, new GHSDeliveryInfoDataModel(g), new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        GHSMenuItemFragment.t(GHSMenuItemFragment.this);
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSMenuItemFragment.a(GHSMenuItemFragment.this, null);
      }
    });
    v.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        GHSApplication.a().b().a(GHSMenuItemFragment.w(GHSMenuItemFragment.this));
        GHSMenuItemFragment.c(GHSMenuItemFragment.this, paramContext, paramBoolean);
      }
    });
    v.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        android.support.v4.app.q localq = getActivity();
        if (localq != null)
        {
          c.a(paramContext, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), localq.getResources().getString(2131231717), null, null, null);
          GHSMenuItemFragment.u(GHSMenuItemFragment.this);
        }
      }
    });
    v.a();
  }
  
  private void d(final Context paramContext, final boolean paramBoolean)
  {
    w = new com.grubhub.AppBaseLibrary.android.dataServices.a.b.p(paramContext, true, new GHSPickupInfoDataModel(), new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        GHSMenuItemFragment.t(GHSMenuItemFragment.this);
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSMenuItemFragment.a(GHSMenuItemFragment.this, null);
      }
    });
    w.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        GHSApplication.a().b().a(GHSMenuItemFragment.w(GHSMenuItemFragment.this));
        GHSMenuItemFragment.c(GHSMenuItemFragment.this, paramContext, paramBoolean);
      }
    });
    w.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        android.support.v4.app.q localq = getActivity();
        if (localq != null)
        {
          c.a(paramContext, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), localq.getResources().getString(2131231717), null, null, null);
          GHSMenuItemFragment.u(GHSMenuItemFragment.this);
        }
      }
    });
    w.a();
  }
  
  private void e(final Context paramContext, final boolean paramBoolean)
  {
    GHSMenuItemUpdateModel localGHSMenuItemUpdateModel = new GHSMenuItemUpdateModel();
    localGHSMenuItemUpdateModel.setRestaurantId(d.getRestaurantId());
    localGHSMenuItemUpdateModel.setMenuItemId(i.getMenuItemId());
    localGHSMenuItemUpdateModel.setQuantity(n);
    localGHSMenuItemUpdateModel.setSpecialInstructions(o);
    localGHSMenuItemUpdateModel.setApplyFreeGrub(Boolean.valueOf(false));
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = m.keySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (String)localIterator.next();
      localObject = ((ArrayList)m.get(localObject)).iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        GHSMenuItemUpdateModel.GHSCartOptionsModel localGHSCartOptionsModel = new GHSMenuItemUpdateModel.GHSCartOptionsModel();
        localGHSCartOptionsModel.setId(str);
        localArrayList.add(localGHSCartOptionsModel);
      }
    }
    localGHSMenuItemUpdateModel.setOptions(localArrayList);
    x = new com.grubhub.AppBaseLibrary.android.dataServices.a.b.b(paramContext, s.getCartId(), localGHSMenuItemUpdateModel, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        GHSMenuItemFragment.t(GHSMenuItemFragment.this);
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSMenuItemFragment.u(GHSMenuItemFragment.this);
        GHSMenuItemFragment.a(GHSMenuItemFragment.this, null);
      }
    });
    x.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        GHSMenuItemFragment.a(GHSMenuItemFragment.this, paramAnonymousGHSICartDataModel);
        if (GHSMenuItemFragment.k(GHSMenuItemFragment.this) != null) {
          GHSApplication.a().b().b(GHSMenuItemFragment.k(GHSMenuItemFragment.this));
        }
        if (GHSMenuItemFragment.r(GHSMenuItemFragment.this) != null)
        {
          if (!paramBoolean) {
            break label107;
          }
          paramAnonymousGHSICartDataModel = new ArrayList();
          paramAnonymousGHSICartDataModel.add(GHSMenuItemFragment.r(GHSMenuItemFragment.this));
          GHSApplication.a().b().a(paramAnonymousGHSICartDataModel);
        }
        for (;;)
        {
          GHSMenuItemFragment.a(GHSMenuItemFragment.this, GHSMenuItemFragment.x(GHSMenuItemFragment.this), 1000, true);
          return;
          label107:
          GHSApplication.a().b().a(GHSMenuItemFragment.r(GHSMenuItemFragment.this));
        }
      }
    });
    x.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        android.support.v4.app.q localq = getActivity();
        if (localq != null)
        {
          if ((GHSMenuItemFragment.w(GHSMenuItemFragment.this) != null) && (GHSMenuItemFragment.k(GHSMenuItemFragment.this) != null) && (paramAnonymousb.c() == com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA)) {
            GHSOutOfRangeDialog.a(GHSMenuItemFragment.k(GHSMenuItemFragment.this).getRestaurantId(), GHSMenuItemFragment.k(GHSMenuItemFragment.this).getRestaurantName(), GHSMenuItemFragment.k(GHSMenuItemFragment.this).offersPickup(), GHSMenuItemFragment.w(GHSMenuItemFragment.this), com.grubhub.AppBaseLibrary.android.order.i.ADD_ITEM, "restaurant menu item").show(getChildFragmentManager(), GHSOutOfRangeDialog.class.getSimpleName());
          }
        }
        else {
          return;
        }
        if (paramAnonymousb.c() == com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_RESTAURANT_NOT_TAKING_FUTURE_ORDERS)
        {
          c.a(paramContext, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), null, null, paramAnonymousb.i(), new com.grubhub.AppBaseLibrary.android.b()
          {
            public void a(DialogInterface paramAnonymous2DialogInterface)
            {
              GHSMenuItemFragment.y(GHSMenuItemFragment.this);
            }
            
            public void c(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              GHSMenuItemFragment.y(GHSMenuItemFragment.this);
            }
          });
          return;
        }
        c.a(paramContext, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), localq.getResources().getString(2131231717), null, null, null);
      }
    });
    x.a();
  }
  
  private void f()
  {
    Object localObject2 = null;
    Object localObject3;
    if ((i != null) && (k == null) && (l == null))
    {
      k = new ArrayList();
      l = new ArrayList();
      localObject1 = i.getMenuItemChoiceGroups();
      if (localObject1 != null)
      {
        localObject1 = ((ArrayList)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject3 = (GHSIFoodMenuDataModel.GHSIChoiceGroup)((Iterator)localObject1).next();
          if (localObject3 != null) {
            if (((GHSIFoodMenuDataModel.GHSIChoiceGroup)localObject3).getMinimum() == 0) {
              l.add(localObject3);
            } else if (((GHSIFoodMenuDataModel.GHSIChoiceGroup)localObject3).getMinimum() >= 1) {
              k.add(localObject3);
            }
          }
        }
      }
    }
    if ((i != null) && (F != null))
    {
      localObject3 = (TextView)F.findViewById(2131689896);
      if (i.getMenuItemName() == null) {
        break label374;
      }
    }
    label374:
    for (Object localObject1 = i.getMenuItemName().trim();; localObject1 = null)
    {
      ((TextView)localObject3).setText((CharSequence)localObject1);
      localObject3 = (TextView)F.findViewById(2131689897);
      localObject1 = localObject2;
      if (i.getMenuItemDescription() != null) {
        localObject1 = i.getMenuItemDescription().trim();
      }
      ((TextView)localObject3).setText((CharSequence)localObject1);
      ((TextView)F.findViewById(2131689895)).setText(String.format(Locale.US, F.getContext().getString(2131231830), new Object[] { Float.valueOf(a(1)) }));
      if (D == null) {
        break;
      }
      E = new e(this, k, l, m);
      D.setAdapter(E);
      if (k == null) {
        break;
      }
      int i1 = 1;
      while (i1 < k.size() + 1)
      {
        D.expandGroup(i1);
        i1 += 1;
      }
    }
  }
  
  private boolean g()
  {
    boolean bool2;
    if ((k == null) || (k.isEmpty())) {
      bool2 = true;
    }
    Iterator localIterator;
    boolean bool1;
    do
    {
      return bool2;
      localIterator = k.iterator();
      bool1 = true;
      bool2 = bool1;
    } while (!localIterator.hasNext());
    GHSIFoodMenuDataModel.GHSIChoiceGroup localGHSIChoiceGroup = (GHSIFoodMenuDataModel.GHSIChoiceGroup)localIterator.next();
    if ((!TextUtils.isEmpty(localGHSIChoiceGroup.getChoiceId())) && ((!m.containsKey(localGHSIChoiceGroup.getChoiceId())) || (((ArrayList)m.get(localGHSIChoiceGroup.getChoiceId())).size() < localGHSIChoiceGroup.getMinimum()))) {
      bool1 = false;
    }
    for (;;)
    {
      break;
    }
  }
  
  private void h()
  {
    
    if (q != null) {
      q.p();
    }
  }
  
  private boolean i()
  {
    if ((s.getCoupon() == null) || (s.getCoupon().getMinimumAmount() == null)) {
      return false;
    }
    int i2 = s.getCoupon().getMinimumAmountInCents().intValue();
    int i1 = s.getSubtotalInCents().intValue();
    i1 = s.getCoupon().getAmountInCents().intValue() + i1;
    if (s.getOrderItems() != null)
    {
      Iterator localIterator = s.getOrderItems().iterator();
      while (localIterator.hasNext())
      {
        GHSICartDataModel.GHSIOrderItem localGHSIOrderItem = (GHSICartDataModel.GHSIOrderItem)localIterator.next();
        if ((i.getMenuItemId().equals(localGHSIOrderItem.getOriginalItemId())) && (localGHSIOrderItem.getDinerTotalInCents() != null)) {
          i1 -= localGHSIOrderItem.getDinerTotalInCents().intValue();
        }
      }
    }
    for (;;)
    {
      return i1 + Math.round(a(n) * 100.0F) < i2;
    }
  }
  
  private void j()
  {
    android.support.v4.app.q localq = getActivity();
    if ((localq != null) && ((localq instanceof GHSBaseActivity))) {
      ((GHSBaseActivity)getActivity()).a(true);
    }
  }
  
  private void k()
  {
    android.support.v4.app.q localq = getActivity();
    if ((localq != null) && ((localq instanceof GHSBaseActivity))) {
      ((GHSBaseActivity)getActivity()).a(false);
    }
  }
  
  private void l()
  {
    com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(d);
  }
  
  private boolean m()
  {
    return (s != null) && (s.getOrderItems() != null) && (s.getOrderItems().size() > 0) && (!d.getRestaurantId().equals(s.getRestaurantId()));
  }
  
  private boolean n()
  {
    return (s == null) || (!d.getRestaurantId().equals(s.getRestaurantId()));
  }
  
  private void o()
  {
    RotateAnimation localRotateAnimation = new RotateAnimation(15.0F, 0.0F, C.getWidth() / 2, C.getHeight() * 2);
    localRotateAnimation.setInterpolator(new AccelerateInterpolator());
    localRotateAnimation.setDuration(250L);
    localRotateAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        GHSMenuItemFragment.B(GHSMenuItemFragment.this);
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    C.startAnimation(localRotateAnimation);
  }
  
  private void p()
  {
    Fragment localFragment = getParentFragment();
    if ((localFragment instanceof GHSRestaurantFragment)) {
      ((GHSRestaurantFragment)localFragment).e();
    }
  }
  
  public void a(int paramInt, String paramString, HashMap<String, ArrayList<String>> paramHashMap)
  {
    n = paramInt;
    o = paramString;
    m = paramHashMap;
  }
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    c.a(getActivity(), paramb.f(), paramb.getLocalizedMessage(), getResources().getString(2131231717), null, null, null);
  }
  
  public void a(GHSIFoodMenuDataModel.GHSIMenuItem paramGHSIMenuItem)
  {
    i = paramGHSIMenuItem;
    f();
    e();
  }
  
  public void a(com.grubhub.AppBaseLibrary.android.order.cart.p paramp)
  {
    if (paramp != null)
    {
      d = GHSApplication.a().b().U();
      switch (41.a[paramp.ordinal()])
      {
      }
    }
    do
    {
      return;
      b(getActivity(), true);
      return;
      if (q != null) {
        q.o();
      }
      f_();
      return;
      if (getArguments().getString("old_item_id", null) == null)
      {
        e(getActivity(), false);
        return;
      }
      a(getActivity());
      return;
    } while (q == null);
    q.q();
  }
  
  public void a(String paramString, ArrayList<String> paramArrayList)
  {
    if ((!TextUtils.isEmpty(paramString)) && (paramArrayList != null))
    {
      if (paramArrayList.isEmpty()) {
        m.remove(paramString);
      }
    }
    else {
      return;
    }
    m.put(paramString, paramArrayList);
  }
  
  public void b() {}
  
  public void c() {}
  
  public boolean d()
  {
    boolean bool = true;
    if ((s == null) || (r == null)) {
      bool = false;
    }
    label109:
    label112:
    for (;;)
    {
      return bool;
      int i1;
      if ((r.getSubOrderType() == l.DEFAULT) && (s.isAsapOrder()))
      {
        i1 = 1;
        if ((r.getSubOrderType() != l.FUTURE) || (s.isAsapOrder()) || (s.getExpectedTimeInMillis() != r.getWhenFor())) {
          break label109;
        }
      }
      for (int i2 = 1;; i2 = 0)
      {
        if ((i1 == 0) && (i2 == 0)) {
          break label112;
        }
        return false;
        i1 = 0;
        break;
      }
    }
  }
  
  protected void e()
  {
    Object localObject;
    if (H != null)
    {
      localObject = H.getContext();
      if ((d == null) || (!d.isOpen(h)))
      {
        H.setText(2131231683);
        H.setEnabled(false);
      }
    }
    else
    {
      return;
    }
    if (f)
    {
      H.setText(String.format(((Context)localObject).getString(2131231684), new Object[] { j }));
      H.setEnabled(GHSApplication.n());
      return;
    }
    if ((n > 0) && (g()))
    {
      if (getArguments().getString("old_item_id", null) == null)
      {
        H.setText(String.format(((Context)localObject).getString(2131231667), new Object[] { String.format(Locale.US, ((Context)localObject).getString(2131231830), new Object[] { Float.valueOf(a(n)) }) }));
        localObject = H;
        if (i == null) {
          break label264;
        }
      }
      label264:
      for (boolean bool = true;; bool = false)
      {
        ((Button)localObject).setEnabled(bool);
        return;
        H.setText(String.format(((Context)localObject).getString(2131231668), new Object[] { String.format(Locale.US, ((Context)localObject).getString(2131231830), new Object[] { Float.valueOf(a(n)) }) }));
        break;
      }
    }
    int i1;
    if ((k != null) && (k.size() > 1))
    {
      localObject = k.iterator();
      i1 = 0;
      if (((Iterator)localObject).hasNext())
      {
        GHSIFoodMenuDataModel.GHSIChoiceGroup localGHSIChoiceGroup = (GHSIFoodMenuDataModel.GHSIChoiceGroup)((Iterator)localObject).next();
        if ((TextUtils.isEmpty(localGHSIChoiceGroup.getChoiceId())) || ((m.containsKey(localGHSIChoiceGroup.getChoiceId())) && (((ArrayList)m.get(localGHSIChoiceGroup.getChoiceId())).size() >= localGHSIChoiceGroup.getMinimum()))) {
          break label434;
        }
        i1 += 1;
      }
    }
    label434:
    for (;;)
    {
      break;
      H.setText(String.format(getString(2131231681), new Object[] { Integer.valueOf(i1) }));
      for (;;)
      {
        H.setEnabled(false);
        return;
        H.setText(2131231677);
      }
    }
  }
  
  public boolean f_()
  {
    a(false);
    return true;
  }
  
  public void g_()
  {
    android.support.v4.app.q localq = getActivity();
    if (localq != null)
    {
      e = false;
      h = g.PICKUP;
      a(localq, n());
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    Fragment localFragment = getParentFragment();
    if ((localFragment != null) && ((localFragment instanceof f))) {
      q = ((f)getParentFragment());
    }
    while (!(paramActivity instanceof f)) {
      return;
    }
    q = ((f)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      n = paramBundle.getInt("selected_quantity");
      o = paramBundle.getString("special_instructions_input");
      m = ((HashMap)paramBundle.getSerializable("selected_choice_options"));
    }
    if (m == null) {
      m = new HashMap();
    }
    paramBundle = getArguments().getString("restaurant_id");
    if (!TextUtils.isEmpty(paramBundle))
    {
      d = GHSApplication.a().b().U();
      if ((d == null) || (!paramBundle.equals(d.getRestaurantId()))) {
        d = GHSApplication.a().b().T();
      }
    }
    c = getArguments().getString("item_id");
    g = ((GHSIAddressDataModel)getArguments().getParcelable("search_address"));
    h = ((g)getArguments().getSerializable("order_type"));
    e = getArguments().getBoolean("delivery_radius_check");
    f = getArguments().getBoolean("restaurant_phone_only");
    j = getArguments().getString("restaurant_phone_number");
    paramBundle = GHSApplication.a().b();
    s = paramBundle.X();
    r = paramBundle.z();
    setHasOptionsMenu(true);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    C = ((ViewGroup)paramLayoutInflater.inflate(2130903131, paramViewGroup, false));
    D = ((ExpandableListView)C.findViewById(2131689891));
    B = ((GHSLoadingViewFlipper)C.findViewById(2131689888));
    F = paramLayoutInflater.inflate(2130903132, null, false);
    J = ((EditText)F.findViewById(2131689898));
    J.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        if (com.grubhub.AppBaseLibrary.android.utils.f.c(paramAnonymousEditable.toString())) {
          GHSMenuItemFragment.a(GHSMenuItemFragment.this, Integer.valueOf(paramAnonymousEditable.toString()).intValue());
        }
        while (GHSMenuItemFragment.a(GHSMenuItemFragment.this) < 1)
        {
          GHSMenuItemFragment.b(GHSMenuItemFragment.this).setText(String.valueOf(1));
          return;
          GHSMenuItemFragment.a(GHSMenuItemFragment.this, 1);
        }
        if (GHSMenuItemFragment.a(GHSMenuItemFragment.this) > 99)
        {
          GHSMenuItemFragment.b(GHSMenuItemFragment.this).setText(String.valueOf(99));
          return;
        }
        e();
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    J.setText(String.valueOf(n));
    F.findViewById(2131689899).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (GHSMenuItemFragment.a(GHSMenuItemFragment.this) > 1)
        {
          GHSMenuItemFragment.c(GHSMenuItemFragment.this);
          GHSMenuItemFragment.b(GHSMenuItemFragment.this).setText(String.valueOf(GHSMenuItemFragment.a(GHSMenuItemFragment.this)));
        }
      }
    });
    F.findViewById(2131689900).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (GHSMenuItemFragment.a(GHSMenuItemFragment.this) < 99)
        {
          GHSMenuItemFragment.d(GHSMenuItemFragment.this);
          GHSMenuItemFragment.b(GHSMenuItemFragment.this).setText(String.valueOf(GHSMenuItemFragment.a(GHSMenuItemFragment.this)));
        }
      }
    });
    D.addHeaderView(F);
    paramLayoutInflater = paramLayoutInflater.inflate(2130903203, null, false);
    G = ((EditText)paramLayoutInflater.findViewById(2131690260));
    G.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        GHSMenuItemFragment.a(GHSMenuItemFragment.this, paramAnonymousEditable.toString());
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    G.setText(o);
    D.addFooterView(paramLayoutInflater);
    f();
    E = new e(this, k, l, m);
    D.setAdapter(E);
    if (k != null)
    {
      int i1 = 1;
      while (i1 < k.size() + 1)
      {
        D.expandGroup(i1);
        i1 += 1;
      }
    }
    D.setOnGroupClickListener(new ExpandableListView.OnGroupClickListener()
    {
      public boolean onGroupClick(ExpandableListView paramAnonymousExpandableListView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        boolean bool2 = false;
        paramAnonymousExpandableListView = GHSMenuItemFragment.e(GHSMenuItemFragment.this).a(paramAnonymousInt);
        boolean bool1;
        if (paramAnonymousExpandableListView == null) {
          bool1 = true;
        }
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (paramAnonymousExpandableListView.getItemVariationId() == 0);
          bool1 = bool2;
        } while (GHSMenuItemFragment.f(GHSMenuItemFragment.this).containsKey(Integer.toString(paramAnonymousExpandableListView.getItemVariationId())));
        c.a(paramAnonymousView.getContext(), 2131231677, 2131231679, 2131231717, 0, 0, null);
        return true;
      }
    });
    D.setOnChildClickListener(new ExpandableListView.OnChildClickListener()
    {
      public boolean onChildClick(ExpandableListView paramAnonymousExpandableListView, View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, long paramAnonymousLong)
      {
        paramAnonymousInt2 = 1;
        paramAnonymousExpandableListView = GHSMenuItemFragment.e(GHSMenuItemFragment.this).a(paramAnonymousInt1);
        String str = paramAnonymousExpandableListView.getChoiceId();
        paramAnonymousInt1 = paramAnonymousExpandableListView.getMaximum();
        if (paramAnonymousView.getTag() != null)
        {
          paramAnonymousExpandableListView = (String)paramAnonymousView.getTag();
          if (paramAnonymousExpandableListView != null)
          {
            ArrayList localArrayList = (ArrayList)GHSMenuItemFragment.f(GHSMenuItemFragment.this).get(str);
            paramAnonymousView = localArrayList;
            if (localArrayList == null) {
              paramAnonymousView = new ArrayList();
            }
            if ((paramAnonymousView.contains(paramAnonymousExpandableListView)) || (paramAnonymousInt1 != 1)) {
              break label146;
            }
            paramAnonymousView.clear();
            paramAnonymousView.add(paramAnonymousExpandableListView);
            paramAnonymousInt1 = paramAnonymousInt2;
          }
        }
        for (;;)
        {
          if (paramAnonymousInt1 != 0)
          {
            a(str, paramAnonymousView);
            GHSMenuItemFragment.g(GHSMenuItemFragment.this).invalidateViews();
            e();
          }
          return false;
          paramAnonymousExpandableListView = null;
          break;
          label146:
          if (paramAnonymousView.contains(paramAnonymousExpandableListView))
          {
            paramAnonymousView.remove(paramAnonymousExpandableListView);
            paramAnonymousInt1 = paramAnonymousInt2;
          }
          else if (paramAnonymousView.size() < paramAnonymousInt1)
          {
            paramAnonymousView.add(paramAnonymousExpandableListView);
            paramAnonymousInt1 = paramAnonymousInt2;
          }
          else
          {
            paramAnonymousInt1 = 0;
          }
        }
      }
    });
    H = ((Button)C.findViewById(2131689890));
    H.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        final Object localObject = paramAnonymousView.getContext();
        ((InputMethodManager)((Context)localObject).getSystemService("input_method")).hideSoftInputFromWindow(paramAnonymousView.getWindowToken(), 2);
        if (GHSMenuItemFragment.h(GHSMenuItemFragment.this)) {
          if (GHSMenuItemFragment.i(GHSMenuItemFragment.this) != null)
          {
            paramAnonymousView = "tel: " + GHSMenuItemFragment.i(GHSMenuItemFragment.this);
            localObject = new Intent("android.intent.action.DIAL");
            ((Intent)localObject).setData(Uri.parse(paramAnonymousView));
            startActivity((Intent)localObject);
          }
        }
        do
        {
          return;
          if (GHSMenuItemFragment.j(GHSMenuItemFragment.this))
          {
            c.a((Context)localObject, 2131231671, 2131231670, 2131232071, 2131231711, 0, new com.grubhub.AppBaseLibrary.android.b()
            {
              public void a(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                GHSMenuItemFragment.a(GHSMenuItemFragment.this, localObject, true);
              }
              
              public void b(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                paramAnonymous2DialogInterface.dismiss();
              }
            });
            return;
          }
          if (!d()) {
            break;
          }
        } while (GHSMenuItemFragment.k(GHSMenuItemFragment.this) == null);
        long l2 = 0L;
        long l1 = l2;
        if (GHSMenuItemFragment.l(GHSMenuItemFragment.this) != null)
        {
          l1 = l2;
          if (GHSMenuItemFragment.l(GHSMenuItemFragment.this).getSubOrderType() == l.FUTURE) {
            l1 = GHSMenuItemFragment.l(GHSMenuItemFragment.this).getWhenFor();
          }
        }
        localObject = GHSMenuItemFragment.k(GHSMenuItemFragment.this).getRestaurantId();
        String str1 = GHSMenuItemFragment.k(GHSMenuItemFragment.this).getLatitude();
        String str2 = GHSMenuItemFragment.k(GHSMenuItemFragment.this).getLongitude();
        String str3 = GHSMenuItemFragment.m(GHSMenuItemFragment.this).getCartId();
        boolean bool = GHSMenuItemFragment.m(GHSMenuItemFragment.this).isAsapOrder();
        l2 = GHSMenuItemFragment.m(GHSMenuItemFragment.this).getExpectedTimeInMillis();
        if (GHSMenuItemFragment.l(GHSMenuItemFragment.this) == null) {}
        for (paramAnonymousView = g.DELIVERY;; paramAnonymousView = GHSMenuItemFragment.l(GHSMenuItemFragment.this).getOrderType())
        {
          GHSUpdateCartTimeDialogFragment.a((String)localObject, str1, str2, str3, bool, l2, l1, paramAnonymousView).show(getChildFragmentManager(), GHSUpdateCartTimeDialogFragment.class.getSimpleName());
          return;
        }
        GHSMenuItemFragment.a(GHSMenuItemFragment.this, (Context)localObject, GHSMenuItemFragment.n(GHSMenuItemFragment.this));
      }
    });
    e();
    paramLayoutInflater = C.getViewTreeObserver();
    if (getArguments().getBoolean("should_restore")) {
      paramLayoutInflater.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener()
      {
        public boolean onPreDraw()
        {
          GHSMenuItemFragment.o(GHSMenuItemFragment.this).getViewTreeObserver().removeOnPreDrawListener(this);
          return true;
        }
      });
    }
    for (;;)
    {
      I = C.findViewById(2131689892);
      I.setTag(b);
      I.setVisibility(8);
      return C;
      if (paramBundle == null)
      {
        paramLayoutInflater.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener()
        {
          public boolean onPreDraw()
          {
            GHSMenuItemFragment.o(GHSMenuItemFragment.this).getViewTreeObserver().removeOnPreDrawListener(this);
            GHSMenuItemFragment.p(GHSMenuItemFragment.this);
            return true;
          }
        });
        getArguments().putBoolean("should_restore", true);
      }
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    q = null;
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
      ((GHSBaseActivity)paramMenu).b(2131230853);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    e();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = new Bundle();
    }
    localBundle.putInt("selected_quantity", n);
    localBundle.putString("special_instructions_input", o);
    localBundle.putSerializable("selected_choice_options", m);
    super.onSaveInstanceState(localBundle);
  }
  
  public void onStart()
  {
    super.onStart();
    com.grubhub.AppBaseLibrary.android.utils.c.h localh;
    com.grubhub.AppBaseLibrary.android.utils.c.e locale;
    com.grubhub.AppBaseLibrary.android.utils.c.f localf;
    if (i == null)
    {
      a(d.getRestaurantId(), c);
      localh = com.grubhub.AppBaseLibrary.android.utils.c.h.a();
      locale = com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP;
      localf = com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_DETAILS;
      if (d == null) {
        break label88;
      }
    }
    label88:
    for (String str = d.getRestaurantId();; str = null)
    {
      localh.a(new com.grubhub.AppBaseLibrary.android.utils.c.b(locale, localf, "restaurant menu item", str, null));
      return;
      B.b();
      break;
    }
  }
  
  public void onStop()
  {
    super.onStop();
    if (u != null)
    {
      u.g();
      u = null;
    }
    if (v != null)
    {
      v.g();
      v = null;
    }
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
    if (t != null)
    {
      t.g();
      t = null;
    }
    if (y != null)
    {
      y.g();
      y = null;
    }
    if (A != null)
    {
      A.g();
      A = null;
    }
    k();
  }
  
  public void r() {}
  
  public void s()
  {
    android.support.v4.app.q localq = getActivity();
    if ((localq instanceof com.grubhub.AppBaseLibrary.android.order.h))
    {
      com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
      GHSFilterSortCriteria localGHSFilterSortCriteria2 = localb.z();
      GHSFilterSortCriteria localGHSFilterSortCriteria1 = localGHSFilterSortCriteria2;
      if (localGHSFilterSortCriteria2 == null) {
        localGHSFilterSortCriteria1 = new GHSFilterSortCriteria();
      }
      localGHSFilterSortCriteria1.setAddress(g, com.grubhub.AppBaseLibrary.android.order.a.b(g));
      localGHSFilterSortCriteria1.setOrderType(g.DELIVERY);
      localb.a(localGHSFilterSortCriteria1);
      ((com.grubhub.AppBaseLibrary.android.order.h)localq).s();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSMenuItemFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */