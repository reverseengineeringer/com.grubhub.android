package com.grubhub.AppBaseLibrary.android.order.cart;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Point;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import android.widget.ViewFlipper;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.a.c;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.order.l;

public class GHSUpdateCartTimeDialogFragment
  extends DialogFragment
{
  private Activity a;
  private String b;
  private String c;
  private String d;
  private String e;
  private boolean f;
  private long g;
  private long h;
  private g i;
  private q j;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.b.r k;
  private c l;
  
  public static GHSUpdateCartTimeDialogFragment a(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean, long paramLong1, long paramLong2, g paramg)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("RESTAURANT_ID", paramString1);
    localBundle.putString("RESTAURANT_LAT", paramString2);
    localBundle.putString("RESTAURANT_LONG", paramString3);
    localBundle.putString("CART_ID", paramString4);
    localBundle.putBoolean("IS_CART_ASAP", paramBoolean);
    localBundle.putLong("CART_TIME", paramLong1);
    localBundle.putLong("FILTER_TIME", paramLong2);
    localBundle.putSerializable("ORDER_TYPE", paramg);
    paramString1 = new GHSUpdateCartTimeDialogFragment();
    paramString1.setArguments(localBundle);
    return paramString1;
  }
  
  private void a(Button paramButton1, Button paramButton2, Button paramButton3, Button paramButton4, final ViewFlipper paramViewFlipper)
  {
    paramButton1.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSUpdateCartTimeDialogFragment.a(GHSUpdateCartTimeDialogFragment.this, GHSUpdateCartTimeDialogFragment.a(GHSUpdateCartTimeDialogFragment.this), paramViewFlipper, new r()
        {
          public void a(GHSIRestaurantDataModel paramAnonymous2GHSIRestaurantDataModel)
          {
            GHSUpdateCartTimeDialogFragment.a(GHSUpdateCartTimeDialogFragment.this, GHSUpdateCartTimeDialogFragment.b(GHSUpdateCartTimeDialogFragment.this), GHSUpdateCartTimeDialogFragment.c(GHSUpdateCartTimeDialogFragment.this), a, paramAnonymous2GHSIRestaurantDataModel);
          }
        });
      }
    });
    paramButton2.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
        GHSFilterSortCriteria localGHSFilterSortCriteria = localb.z();
        paramAnonymousView = localGHSFilterSortCriteria;
        if (localGHSFilterSortCriteria == null) {
          paramAnonymousView = new GHSFilterSortCriteria();
        }
        if (GHSUpdateCartTimeDialogFragment.d(GHSUpdateCartTimeDialogFragment.this))
        {
          paramAnonymousView.setSubOrderType(l.DEFAULT);
          paramAnonymousView.setWhenFor(0L);
        }
        for (;;)
        {
          localb.a(paramAnonymousView);
          dismiss();
          if (GHSUpdateCartTimeDialogFragment.f(GHSUpdateCartTimeDialogFragment.this) != null) {
            GHSUpdateCartTimeDialogFragment.f(GHSUpdateCartTimeDialogFragment.this).a(p.KEEP);
          }
          return;
          paramAnonymousView.setSubOrderType(l.FUTURE);
          paramAnonymousView.setWhenFor(GHSUpdateCartTimeDialogFragment.e(GHSUpdateCartTimeDialogFragment.this));
        }
      }
    });
    paramButton3.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSUpdateCartTimeDialogFragment.a(GHSUpdateCartTimeDialogFragment.this, GHSUpdateCartTimeDialogFragment.a(GHSUpdateCartTimeDialogFragment.this), paramViewFlipper, new r()
        {
          public void a(GHSIRestaurantDataModel paramAnonymous2GHSIRestaurantDataModel)
          {
            GHSApplication.a().b().b(paramAnonymous2GHSIRestaurantDataModel);
            dismiss();
            if (GHSUpdateCartTimeDialogFragment.f(GHSUpdateCartTimeDialogFragment.this) != null) {
              GHSUpdateCartTimeDialogFragment.f(GHSUpdateCartTimeDialogFragment.this).a(p.CREATE_NEW);
            }
          }
        });
      }
    });
    paramButton4.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        dismiss();
        if (GHSUpdateCartTimeDialogFragment.f(GHSUpdateCartTimeDialogFragment.this) != null) {
          GHSUpdateCartTimeDialogFragment.f(GHSUpdateCartTimeDialogFragment.this).a(p.CANCEL);
        }
      }
    });
  }
  
  private void a(TextView paramTextView, Button paramButton1, Button paramButton2)
  {
    if (i == g.PICKUP) {
      paramTextView.setText(2131231636);
    }
    if (h == 0L)
    {
      paramTextView = getString(2131231633);
      paramButton1.setText(String.format(getString(2131231641), new Object[] { paramTextView }));
      if (!f) {
        break label103;
      }
    }
    label103:
    for (paramTextView = getString(2131231633);; paramTextView = com.grubhub.AppBaseLibrary.android.utils.b.a(g, "MMM d, h:mm a", false))
    {
      paramButton2.setText(String.format(getString(2131231637), new Object[] { paramTextView }));
      return;
      paramTextView = com.grubhub.AppBaseLibrary.android.utils.b.a(h, "MMM d, h:mm a", false);
      break;
    }
  }
  
  private void a(String paramString, long paramLong, final ViewFlipper paramViewFlipper, final GHSIRestaurantDataModel paramGHSIRestaurantDataModel)
  {
    final com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
    k = new com.grubhub.AppBaseLibrary.android.dataServices.a.b.r(a, paramString, paramLong, null, new i()
    {
      public void a()
      {
        GHSUpdateCartTimeDialogFragment.a(GHSUpdateCartTimeDialogFragment.this, null);
      }
    });
    k.a(new e()
    {
      public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        localb.b(paramGHSIRestaurantDataModel);
        dismiss();
        if (GHSUpdateCartTimeDialogFragment.f(GHSUpdateCartTimeDialogFragment.this) != null) {
          GHSUpdateCartTimeDialogFragment.f(GHSUpdateCartTimeDialogFragment.this).a(p.UPDATE);
        }
      }
    });
    k.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        if (paramAnonymousb.d())
        {
          dismiss();
          if (GHSUpdateCartTimeDialogFragment.f(GHSUpdateCartTimeDialogFragment.this) != null) {
            GHSUpdateCartTimeDialogFragment.f(GHSUpdateCartTimeDialogFragment.this).a(paramAnonymousb);
          }
          return;
        }
        paramViewFlipper.setDisplayedChild(2);
      }
    });
    k.a();
  }
  
  private void a(String paramString, final ViewFlipper paramViewFlipper, final r paramr)
  {
    Object localObject = GHSApplication.a().b().z();
    l locall;
    if (localObject != null)
    {
      locall = ((GHSFilterSortCriteria)localObject).getSubOrderType();
      if (localObject == null) {
        break label134;
      }
    }
    label134:
    for (localObject = Long.valueOf(((GHSFilterSortCriteria)localObject).getWhenFor());; localObject = null)
    {
      l = new c(a, paramString, c, d, locall, (Long)localObject, true, false, new i()new i
      {
        public void a()
        {
          paramViewFlipper.setDisplayedChild(1);
        }
      }, new i()
      {
        public void a()
        {
          GHSUpdateCartTimeDialogFragment.a(GHSUpdateCartTimeDialogFragment.this, null);
        }
      });
      l.a(new e()
      {
        public void a(GHSIRestaurantDataModel paramAnonymousGHSIRestaurantDataModel)
        {
          if (paramr != null) {
            paramr.a(paramAnonymousGHSIRestaurantDataModel);
          }
        }
      });
      l.a(new d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          dismiss();
          if (GHSUpdateCartTimeDialogFragment.f(GHSUpdateCartTimeDialogFragment.this) != null) {
            GHSUpdateCartTimeDialogFragment.f(GHSUpdateCartTimeDialogFragment.this).a(paramAnonymousb);
          }
        }
      });
      l.a();
      return;
      locall = l.DEFAULT;
      break;
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    paramBundle = getDialog().getWindow();
    Point localPoint = new Point();
    paramBundle.getWindowManager().getDefaultDisplay().getSize(localPoint);
    paramBundle.setLayout(Float.valueOf(x * 0.9F).intValue(), Float.valueOf(y * 0.45F).intValue());
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    a = paramActivity;
    paramActivity = getParentFragment();
    if ((paramActivity instanceof q)) {
      j = ((q)paramActivity);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getArguments();
    if (paramBundle != null)
    {
      b = paramBundle.getString("RESTAURANT_ID");
      c = paramBundle.getString("RESTAURANT_LAT");
      d = paramBundle.getString("RESTAURANT_LONG");
      e = paramBundle.getString("CART_ID");
      f = paramBundle.getBoolean("IS_CART_ASAP");
      g = paramBundle.getLong("CART_TIME");
      h = paramBundle.getLong("FILTER_TIME");
      i = ((g)paramBundle.getSerializable("ORDER_TYPE"));
    }
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = new Dialog(a);
    paramBundle.requestWindowFeature(1);
    paramBundle.setCancelable(false);
    return paramBundle;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903162, null);
  }
  
  public void onDetach()
  {
    super.onDetach();
    a = null;
  }
  
  public void onStop()
  {
    super.onStop();
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
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    paramBundle = (TextView)paramView.findViewById(2131690137);
    Button localButton1 = (Button)paramView.findViewById(2131690138);
    Button localButton2 = (Button)paramView.findViewById(2131690139);
    Button localButton3 = (Button)paramView.findViewById(2131690144);
    Button localButton4 = (Button)paramView.findViewById(2131690145);
    paramView = (ViewFlipper)paramView.findViewById(2131690135);
    a(paramBundle, localButton1, localButton2);
    a(localButton1, localButton2, localButton3, localButton4, paramView);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSUpdateCartTimeDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */