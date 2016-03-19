package com.grubhub.AppBaseLibrary.android.order.cart;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.w;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.ListView;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.account.GHSAddressInfoFragment;
import com.grubhub.AppBaseLibrary.android.account.GHSSavedAddressListFragment;
import com.grubhub.AppBaseLibrary.android.dataServices.a.b.n;
import com.grubhub.AppBaseLibrary.android.dataServices.a.b.p;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSDeliveryInfoDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPickupInfoDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAmount;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIOrderItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.TipTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.order.GHSOutOfRangeDialog;
import com.grubhub.AppBaseLibrary.android.order.l;
import com.grubhub.AppBaseLibrary.android.order.search.GHSCouponFragment;
import com.grubhub.AppBaseLibrary.android.order.search.GHSMenuCategoryJumperFragment;
import com.grubhub.AppBaseLibrary.android.order.search.GHSMenuItemFragment;
import com.grubhub.AppBaseLibrary.android.order.search.GHSRestaurantDetailsFragment;
import com.grubhub.AppBaseLibrary.android.order.search.GHSReviewsFragment;
import com.grubhub.AppBaseLibrary.android.views.GHSFlipView;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import com.grubhub.AppBaseLibrary.android.views.GHSTriangle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class GHSCartFragment
  extends Fragment
  implements com.grubhub.AppBaseLibrary.android.a, com.grubhub.AppBaseLibrary.android.account.b, com.grubhub.AppBaseLibrary.android.account.i, o, com.grubhub.AppBaseLibrary.android.order.search.f
{
  private boolean A;
  private boolean B;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.b.o C;
  private p D;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.b E;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.b.g F;
  private n G;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.c H;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.b.q I;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.b.i J;
  private View.OnClickListener K = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      GHSCartFragment.b(GHSCartFragment.this).e(GHSCartFragment.a(GHSCartFragment.this).getRestaurantId());
      com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("modify your order", "add more items_CTA", ""));
    }
  };
  private View.OnTouchListener L = new View.OnTouchListener()
  {
    float a;
    long b;
    long c;
    float d;
    private int f = -1;
    
    public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
    {
      float f1 = 0.0F;
      if (f < 0) {
        f = ViewConfiguration.get(getActivity()).getScaledTouchSlop();
      }
      float f2;
      switch (paramAnonymousMotionEvent.getAction())
      {
      default: 
      case 0: 
      case 3: 
      case 2: 
        label303:
        label315:
        do
        {
          do
          {
            return false;
            b = paramAnonymousMotionEvent.getEventTime();
          } while (GHSCartFragment.c(GHSCartFragment.this));
          GHSCartFragment.a(GHSCartFragment.this, true);
          a = paramAnonymousMotionEvent.getX();
          d = (a + paramAnonymousView.getTranslationX());
          return false;
          paramAnonymousView.setTranslationX(0.0F);
          GHSCartFragment.a(GHSCartFragment.this, false);
          GHSCartFragment.b(GHSCartFragment.this, false);
          return false;
          GHSCartFragment.b(GHSCartFragment.this, true);
          f1 = paramAnonymousView.getTranslationX();
          float f3 = paramAnonymousMotionEvent.getX() + f1;
          f2 = f3 - d;
          d = f3;
          f3 = Math.abs(f2);
          if (!GHSCartFragment.d(GHSCartFragment.this))
          {
            if (f3 <= f) {
              break label303;
            }
            GHSCartFragment.c(GHSCartFragment.this, true);
            GHSCartFragment.e(GHSCartFragment.this).requestDisallowInterceptTouchEvent(true);
          }
          while ((GHSCartFragment.d(GHSCartFragment.this)) && (((f2 < 0.0F) && (f1 > GHSCartFragment.f(GHSCartFragment.this))) || ((f2 > 0.0F) && (f1 < 0.0F))))
          {
            paramAnonymousView.setTranslationX(f1 + f2);
            if (paramAnonymousView.getTranslationX() >= GHSCartFragment.f(GHSCartFragment.this)) {
              break label315;
            }
            paramAnonymousView.setTranslationX(GHSCartFragment.f(GHSCartFragment.this));
            return false;
            GHSCartFragment.b(GHSCartFragment.this, false);
          }
        } while (paramAnonymousView.getTranslationX() <= 0.0F);
        paramAnonymousView.setTranslationX(0.0F);
        return false;
      }
      GHSCartFragment.b(GHSCartFragment.this, false);
      c = paramAnonymousMotionEvent.getEventTime();
      if ((c - b < 500L) && (!GHSCartFragment.d(GHSCartFragment.this)))
      {
        GHSCartFragment.e(GHSCartFragment.this).requestDisallowInterceptTouchEvent(false);
        GHSCartFragment.a(GHSCartFragment.this, false);
        if (paramAnonymousView.getTranslationX() == 0.0F) {
          f1 = GHSCartFragment.f(GHSCartFragment.this);
        }
        paramAnonymousView.animate().setDuration(100L).translationX(f1).setListener(new Animator.AnimatorListener()
        {
          public void onAnimationCancel(Animator paramAnonymous2Animator) {}
          
          public void onAnimationEnd(Animator paramAnonymous2Animator)
          {
            GHSCartFragment.c(GHSCartFragment.this, false);
          }
          
          public void onAnimationRepeat(Animator paramAnonymous2Animator) {}
          
          public void onAnimationStart(Animator paramAnonymous2Animator) {}
        });
        return false;
      }
      long l;
      if (GHSCartFragment.d(GHSCartFragment.this))
      {
        f2 = paramAnonymousView.getTranslationX() / GHSCartFragment.f(GHSCartFragment.this);
        if (f2 < 0.5D) {
          break label530;
        }
        f1 = GHSCartFragment.f(GHSCartFragment.this);
        l = ((1.0F - f2) * 100.0F);
      }
      for (;;)
      {
        paramAnonymousView.animate().setDuration(l).translationX(f1).setListener(new Animator.AnimatorListener()
        {
          public void onAnimationCancel(Animator paramAnonymous2Animator) {}
          
          public void onAnimationEnd(Animator paramAnonymous2Animator)
          {
            GHSCartFragment.c(GHSCartFragment.this, false);
          }
          
          public void onAnimationRepeat(Animator paramAnonymous2Animator) {}
          
          public void onAnimationStart(Animator paramAnonymous2Animator) {}
        });
        GHSCartFragment.a(GHSCartFragment.this, false);
        return false;
        label530:
        l = (f2 * 100.0F);
        f1 = 0.0F;
      }
    }
  };
  private View.OnClickListener M = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      paramAnonymousView = GHSCouponFragment.a(GHSCartFragment.a(GHSCartFragment.this).getRestaurantId());
      GHSCartFragment.g(GHSCartFragment.this).a().b(2131689817, paramAnonymousView, GHSCouponFragment.class.getSimpleName()).a();
    }
  };
  private View.OnClickListener N = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      com.grubhub.AppBaseLibrary.android.c.a(paramAnonymousView.getContext(), 2131230961, 0, 2131231717, 2131230945, 0, new com.grubhub.AppBaseLibrary.android.b()
      {
        public void a(DialogInterface paramAnonymous2DialogInterface)
        {
          com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("modify your order", "empty bag_CTA", "dismiss"));
        }
        
        public void a(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
        {
          i.a();
          l();
          com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("modify your order", "empty bag_CTA", "successful"));
        }
        
        public void b(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
        {
          com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("modify your order", "empty bag_CTA", "dismiss"));
        }
      });
    }
  };
  private GHSICartDataModel a;
  private List<GHSICartDataModel.GHSIOrderItem> b;
  private GHSIRestaurantDataModel c;
  private List<GHSIFoodMenuDataModel.GHSIMenuItem> d;
  private h e;
  private w f;
  private GHSLoadingViewFlipper g;
  private ListView h;
  private com.grubhub.AppBaseLibrary.android.order.g i;
  private e j;
  private TextView k;
  private TextView l;
  private GHSFlipView m;
  private TextView n;
  private TextView o;
  private GHSTriangle p;
  private View q;
  private View r;
  private View s;
  private View t;
  private View u;
  private View v;
  private View.OnClickListener w;
  private int x;
  private boolean y;
  private boolean z;
  
  private void A()
  {
    if (v != null)
    {
      if (v.getVisibility() == 0)
      {
        v.setVisibility(8);
        p.setOrientation(1);
        com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("order tip selection", "show tip selection_CTA", "hide"));
      }
    }
    else {
      return;
    }
    v.setVisibility(0);
    p.setOrientation(0);
    com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("order tip selection", "show tip selection_CTA", "expand"));
  }
  
  private GHSIFoodMenuDataModel.GHSIMenuItem a(List<GHSIFoodMenuDataModel.GHSIMenuItem> paramList, String paramString)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      GHSIFoodMenuDataModel.GHSIMenuItem localGHSIMenuItem = (GHSIFoodMenuDataModel.GHSIMenuItem)paramList.next();
      if (localGHSIMenuItem.getMenuItemId().equals(paramString)) {
        return localGHSIMenuItem;
      }
    }
    return null;
  }
  
  private void a(float paramFloat, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (GHSICartDataModel.TipTypes localTipTypes = GHSICartDataModel.TipTypes.CASH;; localTipTypes = GHSICartDataModel.TipTypes.INCLUDE_IN_BILL)
    {
      I = new com.grubhub.AppBaseLibrary.android.dataServices.a.b.q(getActivity(), paramFloat, localTipTypes, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
      {
        public void a()
        {
          android.support.v4.app.q localq = getActivity();
          if ((localq instanceof GHSBaseActivity)) {
            ((GHSBaseActivity)localq).a(true);
          }
        }
      }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
      {
        public void a()
        {
          GHSCartFragment.a(GHSCartFragment.this, null);
        }
      });
      I.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
        {
          String str = null;
          if (paramAnonymousGHSICartDataModel != null) {
            str = paramAnonymousGHSICartDataModel.getCartId();
          }
          GHSCartFragment.a(GHSCartFragment.this, str);
        }
      });
      I.a(new d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          android.support.v4.app.q localq = getActivity();
          if (localq != null) {
            com.grubhub.AppBaseLibrary.android.c.a(localq, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), localq.getResources().getString(2131231717), null, null, null);
          }
          if ((localq instanceof GHSBaseActivity)) {
            ((GHSBaseActivity)localq).a(false);
          }
        }
      });
      I.a();
      return;
    }
  }
  
  private void a(Context paramContext, final com.grubhub.AppBaseLibrary.android.dataServices.a.a parama)
  {
    if ((a == null) || (a.getCoupon() == null)) {
      return;
    }
    G = new n(paramContext, a.getCoupon().getId(), null, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSCartFragment.a(GHSCartFragment.this, null);
      }
    });
    G.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        if (parama != null) {
          parama.a();
        }
        GHSCartFragment.q(GHSCartFragment.this);
      }
    });
    G.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        android.support.v4.app.q localq = getActivity();
        if (localq != null) {
          com.grubhub.AppBaseLibrary.android.c.a(localq, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), paramAnonymousb.g(), paramAnonymousb.h(), paramAnonymousb.i(), null);
        }
        GHSCartFragment.q(GHSCartFragment.this);
      }
    });
    G.a();
  }
  
  private void a(View paramView)
  {
    Object localObject = a.getCoupon();
    if (localObject != null)
    {
      TextView localTextView2 = (TextView)paramView.findViewById(2131690173);
      TextView localTextView1 = (TextView)paramView.findViewById(2131690174);
      localTextView2.setText(((GHSICouponDataModel)localObject).getDescription());
      float f1;
      if (((GHSICouponDataModel)localObject).getAmount() != null)
      {
        f1 = Math.abs(((GHSICouponDataModel)localObject).getAmount().floatValue());
        if (f1 <= 0.0F) {
          break label119;
        }
      }
      label119:
      for (localObject = String.format(Locale.US, getString(2131231311), new Object[] { Float.valueOf(f1) });; localObject = String.format(Locale.US, getString(2131231830), new Object[] { Float.valueOf(0.0F) }))
      {
        localTextView1.setText((CharSequence)localObject);
        paramView.setVisibility(0);
        return;
        f1 = 0.0F;
        break;
      }
    }
    paramView.setVisibility(8);
  }
  
  private void a(View paramView, final float paramFloat, final boolean paramBoolean)
  {
    float f2 = a.getSubtotal().floatValue();
    float f1 = f2;
    if (!getResources().getBoolean(2131361806)) {
      f1 = f2 + (a.getTax().floatValue() + paramFloat + a.getDeliveryFee().floatValue());
    }
    f2 = com.grubhub.AppBaseLibrary.android.utils.b.a(f1, 2);
    float f3 = com.grubhub.AppBaseLibrary.android.utils.b.a(a.getSubtotal().floatValue() + paramFloat + a.getTax().floatValue() + a.getDeliveryFee().floatValue(), 2);
    View localView;
    if (c.getDeliveryMinimum() != null)
    {
      f1 = c.getDeliveryMinimum().getAmount().floatValue();
      f1 = com.grubhub.AppBaseLibrary.android.utils.b.a(f1, 2);
      localView = paramView.findViewById(2131689811);
      paramView = (TextView)paramView.findViewById(2131689809);
      paramView.setVisibility(8);
      k.setVisibility(0);
      l.setVisibility(0);
      localView.setVisibility(8);
      k.setText(String.format(Locale.US, getString(2131230947), new Object[] { Float.valueOf(f3 - a.getDeliveryFee().floatValue()) }));
      w = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (GHSCartFragment.b(GHSCartFragment.this) != null) {
            GHSCartFragment.a(GHSCartFragment.this, paramFloat, paramBoolean);
          }
        }
      };
      k.setOnClickListener(w);
      l.setText(String.format(Locale.US, getString(2131230947), new Object[] { Float.valueOf(f3) }));
      l.setEnabled(true);
      l.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (GHSCartFragment.b(GHSCartFragment.this) != null) {
            GHSCartFragment.a(GHSCartFragment.this, paramFloat, paramBoolean);
          }
        }
      });
      if (c.isOpen(i)) {
        break label378;
      }
      paramView.setVisibility(0);
      k.setVisibility(8);
      l.setVisibility(8);
    }
    label378:
    label510:
    label581:
    do
    {
      do
      {
        for (;;)
        {
          return;
          f1 = 0.0F;
          break;
          if (i != com.grubhub.AppBaseLibrary.android.order.g.DELIVERY_OR_PICKUP) {
            break label510;
          }
          localView.setVisibility(0);
          if (!c.offersDelivery())
          {
            l.setEnabled(false);
            l.setText(getResources().getString(2131230957));
          }
          while (f1 > f2)
          {
            l.setEnabled(false);
            l.setText(String.format(Locale.US, getResources().getString(2131230963), new Object[] { Float.valueOf(f1 - f2) }));
            return;
            if (!c.offersPickup()) {
              k.setVisibility(8);
            }
          }
        }
        if (i != com.grubhub.AppBaseLibrary.android.order.g.DELIVERY) {
          break label581;
        }
        k.setVisibility(8);
      } while (f1 <= f2);
      l.setEnabled(false);
      l.setText(String.format(Locale.US, getString(2131230963), new Object[] { Float.valueOf(f1 - f2) }));
      return;
    } while (i != com.grubhub.AppBaseLibrary.android.order.g.PICKUP);
    l.setVisibility(8);
  }
  
  private void a(View paramView, LayoutInflater paramLayoutInflater)
  {
    if (paramView != null)
    {
      paramView.findViewById(2131689796).setVisibility(0);
      paramView.findViewById(2131689813).setVisibility(8);
      h = ((ListView)paramView.findViewById(2131689801));
      t = paramLayoutInflater.inflate(2130903169, h, false);
      s = paramLayoutInflater.inflate(2130903168, h, false);
      u = paramView.findViewById(2131689804);
      v = paramView.findViewById(2131689808);
      n = ((TextView)paramView.findViewById(2131689807));
      o = ((TextView)paramView.findViewById(2131689806));
      p = ((GHSTriangle)paramView.findViewById(2131689805));
      k = ((TextView)paramView.findViewById(2131689810));
      l = ((TextView)paramView.findViewById(2131689812));
      r = paramView.findViewById(2131689799);
      m = ((GHSFlipView)t.findViewById(2131690175));
      q = t.findViewById(2131690180);
      q.setOnClickListener(N);
      r();
      s();
      j = new e(this, paramView.getContext());
      h.setAdapter(j);
      a(a.getOrderItems());
      paramLayoutInflater = paramView.findViewById(2131689800);
      if ((c == null) || (!c.hasCoupons())) {
        break label368;
      }
      paramLayoutInflater.setVisibility(0);
      paramLayoutInflater.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          GHSCartFragment.h(GHSCartFragment.this).onClick(paramAnonymousView);
          com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("coupons", "see coupons list", "coupons_cta"));
        }
      });
    }
    for (;;)
    {
      ((TextView)paramView.findViewById(2131689797)).setText(c.getRestaurantName());
      c(paramView);
      r.setOnClickListener(K);
      u.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          GHSCartFragment.i(GHSCartFragment.this);
        }
      });
      y();
      return;
      label368:
      paramLayoutInflater.setVisibility(4);
    }
  }
  
  private void a(final GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    GHSDeliveryInfoDataModel localGHSDeliveryInfoDataModel = new GHSDeliveryInfoDataModel(paramGHSIAddressDataModel);
    C = new com.grubhub.AppBaseLibrary.android.dataServices.a.b.o(getActivity(), true, localGHSDeliveryInfoDataModel, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        GHSCartFragment.d(GHSCartFragment.this, false);
        android.support.v4.app.q localq = getActivity();
        if (localq != null) {
          ((GHSBaseActivity)localq).a(true);
        }
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        android.support.v4.app.q localq = getActivity();
        if (localq != null) {
          ((GHSBaseActivity)localq).a(false);
        }
        GHSCartFragment.a(GHSCartFragment.this, null);
      }
    });
    C.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        if (paramAnonymousGHSICartDataModel != null) {
          GHSCartFragment.a(GHSCartFragment.this, paramAnonymousGHSICartDataModel);
        }
        GHSCartFragment.a(GHSCartFragment.this, com.grubhub.AppBaseLibrary.android.order.g.DELIVERY);
        GHSApplication.a().b().a(paramGHSIAddressDataModel);
        GHSCartFragment.d(GHSCartFragment.this, true);
        l();
      }
    });
    C.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        GHSCartFragment.l(GHSCartFragment.this);
        GHSCartFragment.d(GHSCartFragment.this, true);
        if (paramAnonymousb.c() == com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_OUT_OF_DELIVERY_AREA)
        {
          paramAnonymousb = GHSApplication.a().b().U();
          GHSOutOfRangeDialog.a(paramAnonymousb.getRestaurantId(), paramAnonymousb.getRestaurantName(), paramAnonymousb.offersPickup(), paramGHSIAddressDataModel, com.grubhub.AppBaseLibrary.android.order.i.ORDER, "cart").show(getChildFragmentManager(), GHSOutOfRangeDialog.class.getSimpleName());
        }
        android.support.v4.app.q localq;
        do
        {
          return;
          localq = getActivity();
        } while (localq == null);
        com.grubhub.AppBaseLibrary.android.c.a(localq, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), getResources().getString(2131231717), null, null, null);
      }
    });
    C.a();
  }
  
  private void a(final String paramString, final int paramInt)
  {
    if (paramInt < b.size())
    {
      String str = ((GHSICartDataModel.GHSIOrderItem)b.get(paramInt)).getOriginalItemId();
      E = new com.grubhub.AppBaseLibrary.android.dataServices.a.b(getActivity(), paramString, str, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
      {
        public void a()
        {
          android.support.v4.app.q localq = getActivity();
          if ((localq instanceof GHSBaseActivity)) {
            ((GHSBaseActivity)localq).a(true);
          }
        }
      }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
      {
        public void a()
        {
          GHSCartFragment.a(GHSCartFragment.this, null);
        }
      });
      E.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSIFoodMenuDataModel.GHSIMenuItem paramAnonymousGHSIMenuItem)
        {
          if (paramAnonymousGHSIMenuItem != null)
          {
            GHSApplication.a().b().a(paramAnonymousGHSIMenuItem);
            GHSCartFragment.a(GHSCartFragment.this, paramString, paramInt + 1);
            GHSCartFragment.m(GHSCartFragment.this).add(paramAnonymousGHSIMenuItem);
          }
        }
      });
      E.a(new d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          if (GHSCartFragment.n(GHSCartFragment.this) != null) {
            GHSCartFragment.n(GHSCartFragment.this).notifyDataSetChanged();
          }
          paramAnonymousb = getActivity();
          if ((paramAnonymousb instanceof GHSBaseActivity)) {
            ((GHSBaseActivity)paramAnonymousb).a(false);
          }
        }
      });
      E.a();
    }
    do
    {
      return;
      if (j != null) {
        j.notifyDataSetChanged();
      }
      paramString = getActivity();
    } while (!(paramString instanceof GHSBaseActivity));
    ((GHSBaseActivity)paramString).a(false);
  }
  
  private void a(String paramString1, String paramString2)
  {
    F = new com.grubhub.AppBaseLibrary.android.dataServices.a.b.g(getActivity(), paramString1, paramString2, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        ((GHSBaseActivity)getActivity()).a(true);
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSCartFragment.a(GHSCartFragment.this, null);
        ((GHSBaseActivity)getActivity()).a(false);
      }
    });
    F.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        if ((paramAnonymousGHSICartDataModel == null) || (paramAnonymousGHSICartDataModel.getOrderItems() == null) || (paramAnonymousGHSICartDataModel.getOrderItems().isEmpty())) {
          i.a();
        }
        for (;;)
        {
          l();
          return;
          GHSApplication.a().b().a(paramAnonymousGHSICartDataModel);
        }
      }
    });
    F.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        GHSCartFragment.this.a(paramAnonymousb);
      }
    });
    if (a(paramString2))
    {
      paramString1 = new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_MENU_QUANTITY_CHANGE_DROPS_BELOW_COUPON_MIN_ORDER);
      com.grubhub.AppBaseLibrary.android.c.a(getActivity(), paramString1.f(), paramString1.getLocalizedMessage(), getActivity().getResources().getString(2131231717), getActivity().getResources().getString(2131230945), null, new com.grubhub.AppBaseLibrary.android.b()
      {
        public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          GHSCartFragment.a(GHSCartFragment.this, getActivity(), GHSCartFragment.p(GHSCartFragment.this));
        }
      });
      paramString2 = com.grubhub.AppBaseLibrary.android.utils.c.h.a();
      com.grubhub.AppBaseLibrary.android.utils.c.e locale = com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP;
      com.grubhub.AppBaseLibrary.android.utils.c.f localf = com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_DETAILS;
      if (c != null) {}
      for (paramString1 = c.getRestaurantId();; paramString1 = null)
      {
        paramString2.a(new com.grubhub.AppBaseLibrary.android.utils.c.b(locale, localf, "cart change alert_lose coupon modal", paramString1, null));
        return;
      }
    }
    F.a();
  }
  
  private void a(final String paramString, boolean paramBoolean)
  {
    if (c == null)
    {
      H = new com.grubhub.AppBaseLibrary.android.dataServices.a.c(getActivity(), paramString, null, null, l.DEFAULT, null, paramBoolean, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
      {
        public void a()
        {
          GHSCartFragment.o(GHSCartFragment.this).a();
        }
      }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
      {
        public void a()
        {
          GHSCartFragment.a(GHSCartFragment.this, null);
        }
      });
      H.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSIRestaurantDataModel paramAnonymousGHSIRestaurantDataModel)
        {
          GHSCartFragment.a(GHSCartFragment.this, paramAnonymousGHSIRestaurantDataModel);
          GHSApplication.a().b().b(GHSCartFragment.a(GHSCartFragment.this));
          paramAnonymousGHSIRestaurantDataModel = getActivity();
          if (paramAnonymousGHSIRestaurantDataModel != null) {
            GHSCartFragment.a(GHSCartFragment.this, getView(), LayoutInflater.from(paramAnonymousGHSIRestaurantDataModel));
          }
          GHSCartFragment.o(GHSCartFragment.this).b();
        }
      });
      paramString = H;
      H.a(new d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          GHSCartFragment.o(GHSCartFragment.this).a(paramAnonymousb.getLocalizedMessage(), new View.OnClickListener()
          {
            public void onClick(View paramAnonymous2View)
            {
              a.a();
            }
          });
          if (GHSCartFragment.n(GHSCartFragment.this) != null) {
            GHSCartFragment.n(GHSCartFragment.this).notifyDataSetChanged();
          }
        }
      });
      H.a();
    }
  }
  
  private void a(List<GHSICartDataModel.GHSIOrderItem> paramList)
  {
    b.clear();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      GHSICartDataModel.GHSIOrderItem localGHSIOrderItem = (GHSICartDataModel.GHSIOrderItem)paramList.next();
      if (localGHSIOrderItem != null) {
        b.add(localGHSIOrderItem);
      }
    }
    if (j != null) {
      j.notifyDataSetChanged();
    }
  }
  
  private boolean a(String paramString)
  {
    if ((a.getCoupon() == null) || (a.getCoupon().getMinimumAmount() == null)) {
      return false;
    }
    int i4 = a.getCoupon().getMinimumAmountInCents().intValue();
    int i1 = a.getSubtotalInCents().intValue() + a.getCoupon().getAmountInCents().intValue();
    int i2;
    int i3;
    if (a.getOrderItems() != null)
    {
      i2 = a.getOrderItems().size();
      Iterator localIterator = a.getOrderItems().iterator();
      while (localIterator.hasNext())
      {
        GHSICartDataModel.GHSIOrderItem localGHSIOrderItem = (GHSICartDataModel.GHSIOrderItem)localIterator.next();
        if ((paramString.equals(localGHSIOrderItem.getId())) && (localGHSIOrderItem.getDinerTotalInCents() != null))
        {
          i3 = i1 - localGHSIOrderItem.getDinerTotalInCents().intValue();
          i1 = i2;
          i2 = i3;
        }
      }
    }
    for (;;)
    {
      return (i2 < i4) && (i1 > 1);
      i3 = i1;
      i1 = i2;
      i2 = i3;
      continue;
      i3 = 0;
      i2 = i1;
      i1 = i3;
    }
  }
  
  private void b(View paramView)
  {
    View localView = paramView.findViewById(2131690177);
    TextView localTextView1 = (TextView)paramView.findViewById(2131690176);
    TextView localTextView2 = (TextView)paramView.findViewById(2131690178);
    paramView = (TextView)paramView.findViewById(2131690179);
    if ((i == com.grubhub.AppBaseLibrary.android.order.g.PICKUP) || (!c.offersDelivery())) {
      localView.setVisibility(8);
    }
    for (;;)
    {
      localTextView1.setText(String.format(Locale.US, getString(2131231830), new Object[] { a.getSubtotal() }));
      paramView.setText(String.format(Locale.US, getString(2131231830), new Object[] { a.getTax() }));
      return;
      localView.setVisibility(0);
      localTextView2.setText(String.format(Locale.US, getString(2131231830), new Object[] { a.getDeliveryFee() }));
    }
  }
  
  private void b(String paramString)
  {
    final com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
    final Object localObject = localb.Y();
    if (localObject != null) {}
    for (localObject = ((GHSIBillModel)localObject).getCartId();; localObject = null)
    {
      J = new com.grubhub.AppBaseLibrary.android.dataServices.a.b.i(getActivity(), paramString, null, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
      {
        public void a()
        {
          GHSCartFragment.a(GHSCartFragment.this, null);
          android.support.v4.app.q localq = getActivity();
          if ((localq instanceof GHSBaseActivity)) {
            ((GHSBaseActivity)localq).a(false);
          }
        }
      });
      J.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSIBillModel paramAnonymousGHSIBillModel)
        {
          if ((paramAnonymousGHSIBillModel != null) && (paramAnonymousGHSIBillModel.getAvailablePaymentTypes() != null) && (!paramAnonymousGHSIBillModel.getAvailablePaymentTypes().isEmpty()) && ((localb.L() == null) || (!paramAnonymousGHSIBillModel.getCartId().equals(localObject)))) {
            localb.b(new ArrayList(paramAnonymousGHSIBillModel.getAvailablePaymentTypes()));
          }
          GHSCartFragment.b(GHSCartFragment.this).b(GHSCartFragment.r(GHSCartFragment.this));
        }
      });
      J.a(new d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          android.support.v4.app.q localq = getActivity();
          if (localq != null) {
            com.grubhub.AppBaseLibrary.android.c.a(localq, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), localq.getResources().getString(2131231717), null, null, null);
          }
          if ((localq instanceof GHSBaseActivity)) {
            ((GHSBaseActivity)localq).a(false);
          }
        }
      });
      J.a();
      return;
    }
  }
  
  private void b(boolean paramBoolean)
  {
    k.setEnabled(paramBoolean);
    l.setEnabled(paramBoolean);
    m.setEnabled(paramBoolean);
    q.setEnabled(paramBoolean);
    r.setEnabled(paramBoolean);
  }
  
  private void c(View paramView)
  {
    a(paramView, 0.0F, false);
  }
  
  public static GHSCartFragment d()
  {
    GHSCartFragment localGHSCartFragment = new GHSCartFragment();
    localGHSCartFragment.setArguments(new Bundle());
    return localGHSCartFragment;
  }
  
  private void r()
  {
    h.removeFooterView(s);
    h.removeFooterView(t);
    a(s);
    b(t);
    if (s.getVisibility() == 0) {
      h.addFooterView(s);
    }
    h.addFooterView(t);
  }
  
  private void s()
  {
    if (m != null)
    {
      m.setVisibility(8);
      if (i != com.grubhub.AppBaseLibrary.android.order.g.DELIVERY) {
        break label77;
      }
      if ((c != null) && (c.offersPickup()))
      {
        m.setFrontVisible(true);
        m.setVisibility(0);
        m.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            GHSCartFragment.j(GHSCartFragment.this);
            com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("modify your order", "switch to pickup_CTA", ""));
          }
        });
      }
    }
    label77:
    while ((i != com.grubhub.AppBaseLibrary.android.order.g.PICKUP) || (c == null) || (!c.offersDelivery())) {
      return;
    }
    m.setFrontVisible(false);
    m.setVisibility(0);
    m.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSCartFragment.k(GHSCartFragment.this);
        com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("modify your order", "switch to delivery_CTA", ""));
      }
    });
  }
  
  private void t()
  {
    Object localObject = GHSApplication.a().b().t();
    if (localObject != null)
    {
      a((GHSIAddressDataModel)localObject);
      return;
    }
    if (GHSApplication.b(getActivity()))
    {
      u();
      return;
    }
    localObject = new GHSAddressDataModel();
    ((GHSIAddressDataModel)localObject).setLatitude(c.getLatitude());
    ((GHSIAddressDataModel)localObject).setLongitude(c.getLongitude());
    a((GHSIAddressDataModel)localObject);
  }
  
  private void u()
  {
    boolean bool;
    if ((c != null) && (c.isCrossStreetRequired()))
    {
      bool = true;
      if (c == null) {
        break label85;
      }
    }
    label85:
    for (String str = c.getRestaurantId();; str = null)
    {
      f.a().b(2131689817, GHSSavedAddressListFragment.a(null, true, bool, str, true, false), GHSSavedAddressListFragment.class.getSimpleName()).a(GHSSavedAddressListFragment.class.getSimpleName()).a();
      return;
      bool = false;
      break;
    }
  }
  
  private void v()
  {
    GHSPickupInfoDataModel localGHSPickupInfoDataModel = new GHSPickupInfoDataModel();
    D = new p(getActivity(), true, localGHSPickupInfoDataModel, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        android.support.v4.app.q localq = getActivity();
        if ((localq instanceof GHSBaseActivity)) {
          ((GHSBaseActivity)localq).a(true);
        }
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSCartFragment.a(GHSCartFragment.this, null);
        android.support.v4.app.q localq = getActivity();
        if ((localq instanceof GHSBaseActivity)) {
          ((GHSBaseActivity)localq).a(false);
        }
      }
    });
    D.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        if (paramAnonymousGHSICartDataModel != null) {
          GHSCartFragment.a(GHSCartFragment.this, paramAnonymousGHSICartDataModel);
        }
        GHSCartFragment.a(GHSCartFragment.this, com.grubhub.AppBaseLibrary.android.order.g.PICKUP);
        GHSCartFragment.d(GHSCartFragment.this, true);
        l();
      }
    });
    D.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        android.support.v4.app.q localq = getActivity();
        if (localq != null) {
          com.grubhub.AppBaseLibrary.android.c.a(localq, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), localq.getResources().getString(2131231717), null, null, null);
        }
        GHSCartFragment.l(GHSCartFragment.this);
      }
    });
    D.a();
  }
  
  private void w()
  {
    x();
    com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.ORDER_PROCESSING, "cart"));
  }
  
  private void x()
  {
    com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(c);
  }
  
  private void y()
  {
    getChildFragmentManager().a().b(2131689808, new GHSTipFragment(), GHSTipFragment.class.getSimpleName()).a();
  }
  
  private void z()
  {
    GHSTipFragment localGHSTipFragment = (GHSTipFragment)f.a(GHSTipFragment.class.getSimpleName());
    if (localGHSTipFragment != null) {
      localGHSTipFragment.a();
    }
  }
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    if ((isAdded()) && (paramb != null)) {
      com.grubhub.AppBaseLibrary.android.c.a(getActivity(), getResources().getString(2131230954), paramb.getLocalizedMessage(), getResources().getString(2131231717), null, null, null);
    }
  }
  
  public void a(GHSIAddressDataModel paramGHSIAddressDataModel, boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    paramString = GHSAddressInfoFragment.a(com.grubhub.AppBaseLibrary.android.account.a.EDIT, paramBoolean1, paramBoolean2, paramString);
    paramString.a(paramGHSIAddressDataModel);
    f.a().b(2131689817, paramString, GHSAddressInfoFragment.class.getSimpleName()).a(GHSAddressInfoFragment.class.getSimpleName()).a();
  }
  
  public void a(String paramString1, String paramString2, GHSIAddressDataModel paramGHSIAddressDataModel) {}
  
  public void a(boolean paramBoolean)
  {
    B = paramBoolean;
  }
  
  public void a(boolean paramBoolean, float paramFloat, String paramString)
  {
    int i1;
    if (o != null)
    {
      o.setText(paramString);
      TextView localTextView = o;
      if ((paramBoolean) || (com.grubhub.AppBaseLibrary.android.utils.f.a(paramString)))
      {
        i1 = 8;
        localTextView.setVisibility(i1);
      }
    }
    else if (n != null)
    {
      if (!paramBoolean) {
        break label99;
      }
      n.setText(getString(2131232031));
    }
    for (;;)
    {
      if ((getView() != null) && (a != null)) {
        a(getView(), paramFloat, paramBoolean);
      }
      return;
      i1 = 0;
      break;
      label99:
      n.setText(String.format(Locale.US, "$%.2f", new Object[] { Float.valueOf(paramFloat) }));
    }
  }
  
  public void a(boolean paramBoolean, String paramString)
  {
    f.a().b(2131689817, GHSAddressInfoFragment.a(com.grubhub.AppBaseLibrary.android.account.a.ADD, paramBoolean, false, paramString), GHSAddressInfoFragment.class.getSimpleName()).a(GHSAddressInfoFragment.class.getSimpleName()).a();
  }
  
  public void b() {}
  
  public void c() {}
  
  public void c(String paramString)
  {
    f.b(GHSSavedAddressListFragment.class.getSimpleName(), 1);
    Object localObject = GHSApplication.a().b().R();
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        GHSIAddressDataModel localGHSIAddressDataModel = (GHSIAddressDataModel)((Iterator)localObject).next();
        if ((localGHSIAddressDataModel != null) && (paramString != null) && (paramString.equals(localGHSIAddressDataModel.getId()))) {
          a(localGHSIAddressDataModel);
        }
      }
    }
    do
    {
      return;
      paramString = getActivity();
    } while (!(paramString instanceof GHSBaseActivity));
    ((GHSBaseActivity)paramString).a(false);
  }
  
  public void d(String paramString)
  {
    f.a(GHSAddressInfoFragment.class.getSimpleName(), 1);
    GHSSavedAddressListFragment localGHSSavedAddressListFragment = (GHSSavedAddressListFragment)f.a(GHSSavedAddressListFragment.class.getSimpleName());
    if (localGHSSavedAddressListFragment != null) {
      localGHSSavedAddressListFragment.a(paramString);
    }
  }
  
  public void e()
  {
    i = com.grubhub.AppBaseLibrary.android.order.g.PICKUP;
    if ((k != null) && (w != null)) {
      w.onClick(k);
    }
  }
  
  public void f()
  {
    Fragment localFragment = f.a(GHSMenuCategoryJumperFragment.class.getSimpleName());
    if (localFragment != null) {
      f.a().a(localFragment).a();
    }
  }
  
  public boolean f_()
  {
    Fragment localFragment = f.a(2131689817);
    if ((localFragment != null) && ((localFragment instanceof com.grubhub.AppBaseLibrary.android.a))) {
      return ((com.grubhub.AppBaseLibrary.android.a)localFragment).f_();
    }
    if (((localFragment instanceof GHSAddressInfoFragment)) || ((localFragment instanceof GHSSavedAddressListFragment)))
    {
      f.d();
      s();
      return true;
    }
    return false;
  }
  
  public void g()
  {
    Fragment localFragment = f.a(GHSCouponFragment.class.getSimpleName());
    if (localFragment != null)
    {
      f.a().a(localFragment).a();
      w();
    }
    z();
  }
  
  public void h() {}
  
  public void i()
  {
    Fragment localFragment = f.a(GHSMenuItemFragment.class.getSimpleName());
    if (localFragment != null)
    {
      f.a().a(localFragment).a();
      w();
    }
    z();
  }
  
  public void j()
  {
    Fragment localFragment = f.a(GHSRestaurantDetailsFragment.class.getSimpleName());
    if (localFragment != null) {
      f.a().a(localFragment).a();
    }
    z();
  }
  
  public void k()
  {
    Fragment localFragment = f.a(GHSReviewsFragment.class.getSimpleName());
    if (localFragment != null) {
      f.a().a(localFragment).a();
    }
    z();
  }
  
  public void l()
  {
    a = GHSApplication.a().b().X();
    View localView = getView();
    if (((localView != null) && (a == null)) || (a.getOrderItems() == null) || (a.getOrderItems().size() == 0))
    {
      localView.findViewById(2131689796).setVisibility(8);
      localView.findViewById(2131689813).setVisibility(0);
      b.clear();
      if (j != null) {
        j.notifyDataSetChanged();
      }
    }
    for (;;)
    {
      if (a != null) {
        z();
      }
      return;
      if ((localView != null) && (j != null))
      {
        a(a.getOrderItems());
        c(localView);
        r();
        s();
      }
    }
  }
  
  public void m()
  {
    l();
  }
  
  public GHSIRestaurantDataModel n()
  {
    return c;
  }
  
  public void o() {}
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof h)) {
      e = ((h)paramActivity);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    f = getChildFragmentManager();
    c = GHSApplication.a().b().U();
    d = GHSApplication.a().b().Q();
    x = (-getResources().getDimensionPixelSize(2131427415) * 2);
    setHasOptionsMenu(true);
    b = new ArrayList();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = paramLayoutInflater.inflate(2130903116, paramViewGroup, false);
    g = ((GHSLoadingViewFlipper)paramViewGroup.findViewById(2131689795));
    g.b();
    a = GHSApplication.a().b().X();
    if (a != null) {
      i = a.getOrderType();
    }
    if ((a == null) || (a.getOrderItems() == null) || (a.getOrderItems().isEmpty()))
    {
      paramViewGroup.findViewById(2131689796).setVisibility(8);
      paramViewGroup.findViewById(2131689813).setVisibility(0);
    }
    for (;;)
    {
      paramViewGroup.findViewById(2131689816).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          getActivity().finish();
        }
      });
      return paramViewGroup;
      if (c == null) {
        g.a();
      } else {
        a(paramViewGroup, paramLayoutInflater);
      }
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    e = null;
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
    paramMenu.getActionBar().setDisplayHomeAsUpEnabled(true);
    if ((paramMenu instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)paramMenu).b(2131230839);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if ((a != null) && (a.getOrderItems() != null) && (!a.getOrderItems().isEmpty())) {
      z();
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if ((a != null) && (a.getOrderItems() != null) && (a.getOrderItems().size() > 0))
    {
      if (d == null)
      {
        d = new ArrayList();
        a(a.getRestaurantId(), 0);
      }
      if (c == null) {
        a(a.getRestaurantId(), true);
      }
    }
    if (!B) {
      w();
    }
    B = false;
  }
  
  public void onStop()
  {
    super.onStop();
    if (E != null)
    {
      E.g();
      E = null;
      b(true);
    }
    if (H != null)
    {
      H.g();
      H = null;
      b(true);
    }
    if (C != null)
    {
      C.g();
      C = null;
      b(true);
    }
    if (D != null)
    {
      D.g();
      D = null;
      b(true);
    }
    if (F != null)
    {
      F.g();
      F = null;
      b(true);
    }
    if (G != null)
    {
      G.g();
      G = null;
      b(true);
    }
    if (I != null)
    {
      I.g();
      I = null;
      b(true);
    }
    if (J != null)
    {
      J.g();
      J = null;
      b(true);
    }
    s();
    ((GHSBaseActivity)getActivity()).a(false);
  }
  
  public void p()
  {
    if (e != null) {
      e.k();
    }
  }
  
  public void q()
  {
    f_();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCartFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */