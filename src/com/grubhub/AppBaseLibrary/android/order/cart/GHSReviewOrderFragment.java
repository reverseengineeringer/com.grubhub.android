package com.grubhub.AppBaseLibrary.android.order.cart;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.q;
import android.support.v4.app.w;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.ViewFlipper;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.a.b.o;
import com.grubhub.AppBaseLibrary.android.dataServices.a.b.p;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSDeliveryInfoDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPickupInfoDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSTipModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.yummyRummy.GHSYummyRummyAccessModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.yummyRummy.GHSYummyRummyAccessModel.GHSYummyRummyMetadata;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel.BillState;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel.GHSIValidationError;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIDiscountCodeInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIOrderItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.TipTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICheckoutResponse;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPickupInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyAccessModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyAccessModel.GHSIYummyRummyMetadataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyModel;
import com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.GHSPaymentSelectionReviewFragment;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public class GHSReviewOrderFragment
  extends Fragment
  implements com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.c
{
  private com.grubhub.AppBaseLibrary.android.dataServices.a.b.m A;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.f.d B;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.k.a C;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.k.b D;
  private boolean E;
  private boolean F;
  private boolean G;
  private int H;
  private String I;
  private String J;
  private String K;
  private String L;
  private String M;
  private String N;
  private m O;
  private k P;
  private GHSIAddressDataModel Q;
  private GHSPaymentSelectionReviewFragment R;
  private TextView a;
  private TextView b;
  private TextView c;
  private EditText d;
  private EditText e;
  private Button f;
  private TextView g;
  private TextView h;
  private ProgressBar i;
  private ProgressBar j;
  private ViewFlipper k;
  private GHSLoadingViewFlipper l;
  private LinearLayout m;
  private TextView n;
  private Button o;
  private TextView p;
  private GHSICartDataModel q;
  private GHSTipModel r;
  private GHSIRestaurantDataModel s;
  private GHSIUserAuthDataModel t;
  private GHSICartPaymentDataModel.PaymentTypes u;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.b.c v;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.b.h w;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSICartDataModel> x;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.b.i y;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.b.j z;
  
  private View a(Context paramContext, int paramInt, String paramString)
  {
    paramContext = LayoutInflater.from(paramContext).inflate(2130903171, null);
    ((TextView)paramContext.findViewById(2131690183)).setText(paramInt);
    ((TextView)paramContext.findViewById(2131690182)).setText(paramString);
    return paramContext;
  }
  
  private View a(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = LayoutInflater.from(paramContext).inflate(2130903171, null);
    ((TextView)paramContext.findViewById(2131690183)).setText(paramString1);
    ((TextView)paramContext.findViewById(2131690182)).setText(paramString2);
    return paramContext;
  }
  
  public static GHSReviewOrderFragment a(com.grubhub.AppBaseLibrary.android.order.g paramg, String paramString1, String paramString2)
  {
    GHSReviewOrderFragment localGHSReviewOrderFragment = new GHSReviewOrderFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("order_type", paramg.toString());
    localBundle.putString("verified_first_name", paramString1);
    localBundle.putString("verified_last_name", paramString2);
    localGHSReviewOrderFragment.setArguments(localBundle);
    return localGHSReviewOrderFragment;
  }
  
  private void a()
  {
    if (!GHSApplication.a().b().F()) {
      return;
    }
    GHSYummyRummyAccessModel.GHSYummyRummyMetadata localGHSYummyRummyMetadata = new GHSYummyRummyAccessModel.GHSYummyRummyMetadata();
    localGHSYummyRummyMetadata.setOrderId(GHSApplication.a().b().X().getCartId());
    GHSYummyRummyAccessModel localGHSYummyRummyAccessModel = new GHSYummyRummyAccessModel();
    localGHSYummyRummyAccessModel.setMetadata(localGHSYummyRummyMetadata);
    C = new com.grubhub.AppBaseLibrary.android.dataServices.a.k.a(getActivity(), localGHSYummyRummyAccessModel, null, null);
    C.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSIYummyRummyModel paramAnonymousGHSIYummyRummyModel)
      {
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, new com.grubhub.AppBaseLibrary.android.dataServices.a.k.b(getActivity(), paramAnonymousGHSIYummyRummyModel.getCheckUrl(), null, null));
        GHSReviewOrderFragment.i(GHSReviewOrderFragment.this).a();
      }
    });
    C.a();
  }
  
  private void a(final Context paramContext)
  {
    v = new com.grubhub.AppBaseLibrary.android.dataServices.a.b.c(paramContext, e.getText().toString(), GHSICartPaymentDataModel.PaymentTypes.PROMO_CODE, null, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        GHSReviewOrderFragment.k(GHSReviewOrderFragment.this).setEnabled(false);
        GHSReviewOrderFragment.h(GHSReviewOrderFragment.this).setEnabled(false);
        GHSReviewOrderFragment.m(GHSReviewOrderFragment.this).setVisibility(0);
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, null);
      }
    });
    v.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(final GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramContext, paramAnonymousGHSICartDataModel.getCartId(), new l()
        {
          public void a()
          {
            GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramAnonymousGHSICartDataModel);
          }
          
          public void b()
          {
            GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramAnonymousGHSICartDataModel);
          }
        });
      }
    });
    v.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        q localq = getActivity();
        if (localq != null)
        {
          if (paramAnonymousb.d())
          {
            GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, m.DEFAULT);
            com.grubhub.AppBaseLibrary.android.c.a(paramContext, getString(2131231440), paramAnonymousb.getMessage(), getString(2131231717), null, null, null);
          }
        }
        else {
          return;
        }
        if (localq.getString(2131231523).equals(paramAnonymousb.getMessage()))
        {
          GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, m.NO_BALANCE);
          return;
        }
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, m.INVALID);
      }
    });
    v.a();
  }
  
  private void a(Context paramContext, TextView paramTextView1, TextView paramTextView2, int paramInt)
  {
    if (!q.isAsapOrder())
    {
      paramTextView2.setText(String.format("%s at %s", new Object[] { new SimpleDateFormat("MMMM d, yyyy", Locale.US).format(new Date(q.getExpectedTimeInMillis())), new SimpleDateFormat("h:mm a", Locale.US).format(new Date(q.getExpectedTimeInMillis())) }));
      paramTextView1.setText(getString(2131231965));
      return;
    }
    if (H == 0) {
      H = paramInt;
    }
    paramInt = H;
    paramTextView2.setText(String.format(Locale.US, paramContext.getString(2131230979), new Object[] { paramInt + "-" + (paramInt + 10) }));
  }
  
  private void a(final Context paramContext, final l paraml)
  {
    GHSICartDataModel.GHSIDiscountCodeInfo localGHSIDiscountCodeInfo = q.getAppliedDiscount();
    if (localGHSIDiscountCodeInfo == null) {
      return;
    }
    w = new com.grubhub.AppBaseLibrary.android.dataServices.a.b.h(paramContext, localGHSIDiscountCodeInfo.getDiscountId(), new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        GHSReviewOrderFragment.h(GHSReviewOrderFragment.this).setEnabled(false);
        GHSReviewOrderFragment.n(GHSReviewOrderFragment.this).setVisibility(0);
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, null);
      }
    });
    w.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(final GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramContext, paramAnonymousGHSICartDataModel.getCartId(), new l()
        {
          public void a()
          {
            GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramAnonymousGHSICartDataModel, b);
          }
          
          public void b()
          {
            GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramAnonymousGHSICartDataModel, b);
          }
        });
      }
    });
    w.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        paramAnonymousb = getActivity();
        if (paramAnonymousb != null)
        {
          GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, GHSReviewOrderFragment.o(GHSReviewOrderFragment.this));
          com.grubhub.AppBaseLibrary.android.c.a(paramAnonymousb, 2131231441, 2131231576, 2131231717, 0, 0, null);
          if (paraml != null) {
            paraml.b();
          }
        }
      }
    });
    w.a();
  }
  
  private void a(Context paramContext, String paramString, final l paraml)
  {
    y = new com.grubhub.AppBaseLibrary.android.dataServices.a.b.i(paramContext, paramString, null, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, null);
        if (paraml != null) {
          paraml.a();
        }
      }
    });
    y.a();
  }
  
  private void a(View paramView)
  {
    q localq = getActivity();
    if ((localq != null) && (paramView != null))
    {
      ((InputMethodManager)localq.getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 2);
      if (d != null) {
        d.clearFocus();
      }
      if (e != null) {
        e.clearFocus();
      }
    }
  }
  
  private void a(GHSIBillModel paramGHSIBillModel, final GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes, String paramString)
  {
    A = new com.grubhub.AppBaseLibrary.android.dataServices.a.b.m(getActivity(), E, paramGHSIBillModel.getCartId(), paramGHSIBillModel.getCheckoutToken(), null, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, null);
      }
    });
    A.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSICheckoutResponse paramAnonymousGHSICheckoutResponse)
      {
        com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
        localb.c(GHSReviewOrderFragment.q(GHSReviewOrderFragment.this));
        localb.b(paramAnonymousGHSICheckoutResponse);
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramPaymentTypes);
        com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("order tip selection", "tip selection_CTA", GHSReviewOrderFragment.r(GHSReviewOrderFragment.this)));
        if (GHSReviewOrderFragment.a(GHSReviewOrderFragment.this) != null) {
          GHSReviewOrderFragment.a(GHSReviewOrderFragment.this).a(null, GHSReviewOrderFragment.d(GHSReviewOrderFragment.this), GHSReviewOrderFragment.e(GHSReviewOrderFragment.this), GHSReviewOrderFragment.f(GHSReviewOrderFragment.this), GHSReviewOrderFragment.b(GHSReviewOrderFragment.this), GHSReviewOrderFragment.c(GHSReviewOrderFragment.this), paramPaymentTypes);
        }
        ((GHSBaseActivity)getActivity()).a(false);
      }
    });
    A.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramAnonymousb);
      }
    });
    A.a();
  }
  
  private void a(GHSICartDataModel paramGHSICartDataModel)
  {
    q = paramGHSICartDataModel;
    if ((q != null) && (q.getAppliedDiscount() != null) && (e != null)) {
      e.setText(q.getAppliedDiscount().getDiscountCode());
    }
    a(m.VALID);
    d();
  }
  
  private void a(GHSICartDataModel paramGHSICartDataModel, l paraml)
  {
    q = paramGHSICartDataModel;
    e.setText("");
    a(m.DEFAULT);
    d();
    if (paraml != null) {
      paraml.a();
    }
  }
  
  private void a(final GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes1, final GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes2)
  {
    Set localSet = com.grubhub.AppBaseLibrary.android.utils.c.a(GHSApplication.a().b(), false);
    if ((localSet == null) || (localSet.contains(paramPaymentTypes1))) {}
    while (O != m.VALID) {
      return;
    }
    paramPaymentTypes1 = getActivity();
    com.grubhub.AppBaseLibrary.android.c.a(getActivity(), 2131231438, 2131231573, 2131231717, 2131230945, 0, new com.grubhub.AppBaseLibrary.android.d()
    {
      public void a(DialogInterface paramAnonymousDialogInterface)
      {
        GHSReviewOrderFragment.p(GHSReviewOrderFragment.this).a(paramPaymentTypes2);
      }
      
      public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramPaymentTypes1, new l()
        {
          public void a() {}
          
          public void b()
          {
            GHSReviewOrderFragment.p(GHSReviewOrderFragment.this).a(b);
          }
        });
      }
      
      public void b(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        GHSReviewOrderFragment.p(GHSReviewOrderFragment.this).a(paramPaymentTypes2);
      }
      
      public void c(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        GHSReviewOrderFragment.p(GHSReviewOrderFragment.this).a(paramPaymentTypes2);
      }
    });
  }
  
  private void a(m paramm)
  {
    Object localObject1 = null;
    boolean bool3 = false;
    boolean bool2 = false;
    boolean bool4 = true;
    boolean bool1 = true;
    Object localObject2 = q.getAmountDueCents();
    if ((localObject2 != null) && (((Integer)localObject2).intValue() == 0)) {}
    for (int i1 = 1;; i1 = 0) {
      switch (37.a[paramm.ordinal()])
      {
      default: 
        if ((e != null) && (f != null) && (g != null) && (h != null) && (i != null) && (j != null) && (k != null))
        {
          e.setEnabled(true);
          paramm = f;
          if (e.getText().length() <= 0) {
            break label864;
          }
          bool1 = true;
          paramm.setEnabled(bool1);
          f.setText(2131231954);
          g.setText(null);
          g.setVisibility(8);
          i.setVisibility(8);
          j.setVisibility(8);
          h.setText(null);
          k.setDisplayedChild(0);
        }
        O = m.DEFAULT;
        if (!G)
        {
          bool1 = bool2;
          if (i1 == 0) {}
        }
        else
        {
          bool1 = true;
        }
        a(bool1);
        return;
      }
    }
    if ((e != null) && (f != null) && (g != null) && (h != null) && (i != null) && (j != null) && (k != null))
    {
      paramm = q.getAppliedDiscount();
      if ((q == null) || (paramm == null)) {
        break label870;
      }
      localObject1 = paramm.getDiscountCode();
      paramm = paramm.getDiscountDescription();
    }
    for (;;)
    {
      e.setEnabled(true);
      f.setEnabled(true);
      f.setText(2131231958);
      g.setText(paramm);
      g.setTextColor(g.getContext().getResources().getColor(2131558481));
      localObject2 = g;
      if (com.grubhub.AppBaseLibrary.android.utils.f.a(paramm)) {}
      for (int i2 = 8;; i2 = 0)
      {
        ((TextView)localObject2).setVisibility(i2);
        i.setVisibility(8);
        j.setVisibility(8);
        h.setText((CharSequence)localObject1);
        k.setDisplayedChild(1);
        O = m.VALID;
        if (!G)
        {
          bool1 = bool3;
          if (i1 == 0) {}
        }
        else
        {
          bool1 = true;
        }
        a(bool1);
        return;
      }
      if ((e != null) && (f != null) && (g != null) && (h != null) && (i != null) && (j != null) && (k != null))
      {
        e.setEnabled(true);
        paramm = f;
        if (e.getText().length() <= 0) {
          break label672;
        }
      }
      for (;;)
      {
        paramm.setEnabled(bool1);
        f.setText(2131231954);
        g.setText(2131231586);
        g.setTextColor(g.getContext().getResources().getColor(2131558466));
        g.setVisibility(0);
        i.setVisibility(8);
        j.setVisibility(8);
        h.setText(null);
        O = m.INVALID;
        a(G);
        return;
        label672:
        bool1 = false;
      }
      if ((e != null) && (f != null) && (g != null) && (h != null) && (i != null) && (j != null) && (k != null))
      {
        e.setEnabled(true);
        paramm = f;
        if (e.getText().length() <= 0) {
          break label858;
        }
      }
      label858:
      for (bool1 = bool4;; bool1 = false)
      {
        paramm.setEnabled(bool1);
        f.setText(2131231954);
        g.setText(2131231585);
        g.setTextColor(g.getContext().getResources().getColor(2131558466));
        g.setVisibility(0);
        i.setVisibility(8);
        j.setVisibility(8);
        h.setText(null);
        O = m.NO_BALANCE;
        a(G);
        return;
      }
      label864:
      bool1 = false;
      break;
      label870:
      localObject2 = null;
      paramm = (m)localObject1;
      localObject1 = localObject2;
    }
  }
  
  private void a(final String paramString, final GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes, final Integer paramInteger)
  {
    if (paramPaymentTypes == GHSICartPaymentDataModel.PaymentTypes.CASH)
    {
      b(paramString, paramPaymentTypes, paramInteger);
      return;
    }
    q localq = getActivity();
    B = new com.grubhub.AppBaseLibrary.android.dataServices.a.f.d(paramString, new com.braintreepayments.api.a.a(localq, GHSApplication.s()).a(), q.getCartId(), localq, null, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, null);
      }
    });
    B.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(Void paramAnonymousVoid)
      {
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramString, paramPaymentTypes, paramInteger);
      }
    });
    B.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramString, paramPaymentTypes, paramInteger);
      }
    });
    B.a();
  }
  
  private void a(final String paramString1, final String paramString2, final GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes)
  {
    y = new com.grubhub.AppBaseLibrary.android.dataServices.a.b.i(getActivity(), paramString1, null, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, null);
      }
    });
    y.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSIBillModel paramAnonymousGHSIBillModel)
      {
        if (paramAnonymousGHSIBillModel == null)
        {
          GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
          return;
        }
        if ((paramAnonymousGHSIBillModel.getBillState() != GHSIBillModel.BillState.READY_FOR_CHECKOUT) || (com.grubhub.AppBaseLibrary.android.utils.f.a(paramAnonymousGHSIBillModel.getCheckoutToken())))
        {
          com.grubhub.AppBaseLibrary.android.b.a locala = com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN;
          List localList = paramAnonymousGHSIBillModel.getValidationErrors();
          paramAnonymousGHSIBillModel = locala;
          if (localList != null)
          {
            paramAnonymousGHSIBillModel = locala;
            if (!localList.isEmpty()) {
              paramAnonymousGHSIBillModel = ((GHSIBillModel.GHSIValidationError)localList.get(0)).getAppError();
            }
          }
          GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, new com.grubhub.AppBaseLibrary.android.b.b(paramAnonymousGHSIBillModel));
          return;
        }
        if (com.grubhub.AppBaseLibrary.android.utils.c.a(GHSReviewOrderFragment.s(GHSReviewOrderFragment.this), paramAnonymousGHSIBillModel))
        {
          GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramAnonymousGHSIBillModel, paramPaymentTypes, paramString2);
          return;
        }
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, null);
        paramAnonymousGHSIBillModel = new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_CHECKOUT_TOTALS_MISMATCH);
        com.grubhub.AppBaseLibrary.android.c.a(getActivity(), paramAnonymousGHSIBillModel.f(), paramAnonymousGHSIBillModel.getLocalizedMessage(), paramAnonymousGHSIBillModel.g(), paramAnonymousGHSIBillModel.h(), paramAnonymousGHSIBillModel.i(), new com.grubhub.AppBaseLibrary.android.d()
        {
          public void a(DialogInterface paramAnonymous2DialogInterface)
          {
            GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, c);
          }
          
          public void a(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, c);
          }
          
          public void b(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, c);
          }
          
          public void c(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, c);
          }
        });
      }
    });
    y.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramAnonymousb);
      }
    });
    y.a();
  }
  
  private void a(boolean paramBoolean)
  {
    if (o == null) {
      return;
    }
    Button localButton = o;
    if ((paramBoolean) && ((Q != null) || ((!E) && (com.grubhub.AppBaseLibrary.android.utils.f.b(J)) && (com.grubhub.AppBaseLibrary.android.utils.f.b(K)) && (com.grubhub.AppBaseLibrary.android.utils.f.b(L))))) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      localButton.setEnabled(paramBoolean);
      return;
    }
  }
  
  private View.OnClickListener b()
  {
    new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramAnonymousView);
        String str = GHSReviewOrderFragment.h(GHSReviewOrderFragment.this).getText().toString();
        paramAnonymousView = paramAnonymousView.getContext();
        if (str.equals(paramAnonymousView.getString(2131231954))) {
          GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramAnonymousView);
        }
        while (!str.equals(paramAnonymousView.getString(2131231958))) {
          return;
        }
        if (GHSReviewOrderFragment.j(GHSReviewOrderFragment.this).getDisplayedChild() == 1)
        {
          GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramAnonymousView, null);
          return;
        }
        GHSReviewOrderFragment.k(GHSReviewOrderFragment.this).setText("");
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, m.DEFAULT);
      }
    };
  }
  
  private void b(Context paramContext)
  {
    Object localObject;
    if (E)
    {
      localObject = new GHSDeliveryInfoDataModel(Q);
      ((GHSDeliveryInfoDataModel)localObject).setDeliveryInstructions(d.getText().toString());
    }
    for (x = new o(paramContext, false, (GHSIDeliveryInfo)localObject, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
        {
          public void a()
          {
            ((GHSBaseActivity)getActivity()).a(true);
          }
        }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
        {
          public void a()
          {
            GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, null);
          }
        });; x = new p(paramContext, false, (GHSIPickupInfo)localObject, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
        {
          public void a()
          {
            ((GHSBaseActivity)getActivity()).a(true);
          }
        }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
        {
          public void a()
          {
            GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, null);
          }
        }))
    {
      x.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
        {
          GHSReviewOrderFragment.b(GHSReviewOrderFragment.this, paramAnonymousGHSICartDataModel);
          GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, true);
          GHSReviewOrderFragment.p(GHSReviewOrderFragment.this).k();
        }
      });
      x.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramAnonymousb);
        }
      });
      x.a();
      return;
      localObject = new GHSPickupInfoDataModel();
      ((GHSPickupInfoDataModel)localObject).setName(String.format("%s %s", new Object[] { J, K }));
      ((GHSPickupInfoDataModel)localObject).setPickupInstructions(d.getText().toString());
      ((GHSPickupInfoDataModel)localObject).setPhone(L);
      ((GHSPickupInfoDataModel)localObject).setEmail(GHSApplication.a().b().N().getEmail());
    }
  }
  
  private void b(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    F = false;
    Object localObject = getActivity();
    if ((localObject != null) && (paramb != null))
    {
      if ((localObject instanceof GHSBaseActivity)) {
        ((GHSBaseActivity)localObject).a(false);
      }
      o.setEnabled(true);
      if (paramb.c() != com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_HTTP557) {
        break label241;
      }
      com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("exit links", "unable to process orders modal_impression", ""));
      localObject = s.getRestaurantPhoneNumber();
      if ((GHSApplication.n()) && (localObject != null) && (((String)localObject).length() != 0)) {
        break label179;
      }
      if ((localObject != null) && (((String)localObject).length() != 0)) {
        break label142;
      }
    }
    label142:
    for (localObject = getString(2131231588);; localObject = String.format(getString(2131231589), new Object[] { s.getRestaurantName(), com.grubhub.AppBaseLibrary.android.utils.h.a.a((String)localObject) }))
    {
      com.grubhub.AppBaseLibrary.android.c.a(getActivity(), paramb.f(), (String)localObject, null, null, getString(2131231717), null);
      return;
    }
    label179:
    com.grubhub.AppBaseLibrary.android.c.a(getActivity(), paramb.f(), String.format(getString(2131231589), new Object[] { s.getRestaurantName(), com.grubhub.AppBaseLibrary.android.utils.h.a.a((String)localObject) }), paramb.g(), paramb.h(), null, new com.grubhub.AppBaseLibrary.android.b()
    {
      public void a(DialogInterface paramAnonymousDialogInterface)
      {
        com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("exit links", "unable to process orders modal_cta", "dismiss"));
      }
      
      public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = "tel: " + GHSReviewOrderFragment.q(GHSReviewOrderFragment.this).getRestaurantPhoneNumber();
        Intent localIntent = new Intent("android.intent.action.DIAL");
        localIntent.setData(Uri.parse(paramAnonymousDialogInterface));
        startActivity(localIntent);
        com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("exit links", "unable to process orders modal_cta", "call"));
      }
      
      public void b(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("exit links", "unable to process orders modal_cta", "dismiss"));
      }
    });
    return;
    label241:
    com.grubhub.AppBaseLibrary.android.c.a((Context)localObject, paramb.f(), paramb.getLocalizedMessage(), paramb.g(), paramb.h(), paramb.i(), null);
  }
  
  private void b(final GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes)
  {
    com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("PLACED_ORDER_PAYMENT_METHOD", new HashMap() {});
  }
  
  private void b(String paramString)
  {
    final q localq = getActivity();
    z = new com.grubhub.AppBaseLibrary.android.dataServices.a.b.j(localq, paramString, null, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        ((GHSBaseActivity)localq).a(false);
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, null);
      }
    });
    z.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        GHSReviewOrderFragment.b(GHSReviewOrderFragment.this, paramAnonymousGHSICartDataModel);
        GHSReviewOrderFragment.t(GHSReviewOrderFragment.this);
      }
    });
    z.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        GHSReviewOrderFragment.b(GHSReviewOrderFragment.this, GHSApplication.a().b().X());
        GHSReviewOrderFragment.t(GHSReviewOrderFragment.this);
      }
    });
    z.a();
  }
  
  private void b(final String paramString, final GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes, final Integer paramInteger)
  {
    if ((q.getAppliedPayment() != null) && (q.getAppliedPayment().getId() != null))
    {
      w = new com.grubhub.AppBaseLibrary.android.dataServices.a.b.h(getActivity(), q.getAppliedPayment().getId(), null, null);
      w.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
        {
          GHSReviewOrderFragment.b(GHSReviewOrderFragment.this, paramString, paramPaymentTypes, paramInteger);
        }
      });
      w.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramAnonymousb);
        }
      });
      w.a();
      return;
    }
    c(paramString, paramPaymentTypes, paramInteger);
  }
  
  private void c()
  {
    GHSICartDataModel.GHSIDiscountCodeInfo localGHSIDiscountCodeInfo;
    if (q != null)
    {
      localGHSIDiscountCodeInfo = q.getAppliedDiscount();
      if (localGHSIDiscountCodeInfo == null) {
        break label46;
      }
    }
    label46:
    for (N = localGHSIDiscountCodeInfo.getDiscountCode(); N != null; N = null)
    {
      O = m.VALID;
      return;
    }
    O = m.DEFAULT;
  }
  
  private void c(GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes)
  {
    int i1;
    if (o != null)
    {
      if (paramPaymentTypes != GHSICartPaymentDataModel.PaymentTypes.CASH) {
        break label111;
      }
      i1 = 2131231956;
      if (q.getAmountDue() == null) {
        break label118;
      }
    }
    label111:
    label118:
    for (float f1 = q.getAmountDue().floatValue();; f1 = 0.0F)
    {
      if (n != null) {
        n.setText(String.format(Locale.US, getString(2131231830), new Object[] { Float.valueOf(f1) }));
      }
      o.setText(String.format(Locale.US, getString(i1), new Object[] { Float.valueOf(f1) }));
      return;
      i1 = 2131231957;
      break;
    }
  }
  
  private void c(String paramString, final GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes, Integer paramInteger)
  {
    v = new com.grubhub.AppBaseLibrary.android.dataServices.a.b.c(getActivity(), paramString, paramPaymentTypes, paramInteger, null, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, null);
      }
    });
    v.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        GHSReviewOrderFragment.b(GHSReviewOrderFragment.this, paramAnonymousGHSICartDataModel);
        GHSApplication.a().b().a(GHSReviewOrderFragment.s(GHSReviewOrderFragment.this));
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramAnonymousGHSICartDataModel.getCartId(), paramAnonymousGHSICartDataModel.getAppliedPayment().getId(), paramPaymentTypes);
      }
    });
    v.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramAnonymousb);
      }
    });
    v.a();
  }
  
  private void d()
  {
    float f2 = 0.0F;
    if (q == null) {
      return;
    }
    Object localObject2;
    Object localObject1;
    if (m != null)
    {
      Context localContext = m.getContext();
      m.removeAllViews();
      localObject2 = q.getCoupon();
      if (localObject2 != null)
      {
        if (((GHSICouponDataModel)localObject2).getDescription() == null) {
          break label576;
        }
        localObject1 = String.format(Locale.US, getString(2131231961), new Object[] { ((GHSICouponDataModel)localObject2).getDescription() });
        if (((GHSICouponDataModel)localObject2).getAmount() == null) {
          break label587;
        }
        f1 = Math.abs(((GHSICouponDataModel)localObject2).getAmount().floatValue());
        label111:
        if (f1 <= 0.0F) {
          break label592;
        }
        localObject2 = String.format(Locale.US, getString(2131231311), new Object[] { Float.valueOf(f1) });
        label143:
        localObject1 = a(localContext, (String)localObject1, (String)localObject2);
        m.addView((View)localObject1);
      }
      localObject1 = a(localContext, 2131230990, String.format(Locale.US, localContext.getString(2131231830), new Object[] { q.getSubtotal() }));
      m.addView((View)localObject1);
      localObject1 = a(localContext, 2131230989, String.format(Locale.US, localContext.getString(2131231830), new Object[] { q.getTax() }));
      m.addView((View)localObject1);
      if (E)
      {
        localObject1 = a(localContext, 2131230983, String.format(Locale.US, localContext.getString(2131231830), new Object[] { q.getDeliveryFee() }));
        m.addView((View)localObject1);
      }
      localObject1 = a(localContext, 2131230991, String.format(Locale.US, localContext.getString(2131231830), new Object[] { q.getTip() }));
      p = ((TextView)((View)localObject1).findViewById(2131690182));
      m.addView((View)localObject1);
      if (O == m.VALID)
      {
        localObject1 = q.getAppliedDiscount();
        if ((localObject1 == null) || (((GHSICartDataModel.GHSIDiscountCodeInfo)localObject1).getDiscountValue() == null)) {
          break label621;
        }
        f1 = ((GHSICartDataModel.GHSIDiscountCodeInfo)localObject1).getDiscountValue().floatValue();
        label416:
        localObject1 = a(localContext, 2131230988, String.format(Locale.US, localContext.getString(2131231311), new Object[] { Float.valueOf(Math.abs(f1)) }));
        m.addView((View)localObject1);
      }
    }
    if (o != null) {
      o.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramAnonymousView);
          GHSReviewOrderFragment.l(GHSReviewOrderFragment.this).setEnabled(false);
          GHSReviewOrderFragment.b(GHSReviewOrderFragment.this, paramAnonymousView.getContext());
        }
      });
    }
    float f1 = f2;
    if (q.getTip() != null) {
      f1 = q.getTip().floatValue();
    }
    if ((s != null) && (s.isCashTipAllowed())) {
      if (q.getTipType() == GHSICartDataModel.TipTypes.CASH) {
        localObject1 = p.getContext().getString(2131230993);
      }
    }
    for (;;)
    {
      p.setText((CharSequence)localObject1);
      c(u);
      return;
      label576:
      localObject1 = getString(2131231960);
      break;
      label587:
      f1 = 0.0F;
      break label111;
      label592:
      localObject2 = String.format(Locale.US, getString(2131231830), new Object[] { Float.valueOf(0.0F) });
      break label143;
      label621:
      f1 = 0.0F;
      break label416;
      localObject1 = String.format(Locale.US, p.getContext().getString(2131231830), new Object[] { Float.valueOf(f1) });
      continue;
      localObject1 = String.format(Locale.US, p.getContext().getString(2131231830), new Object[] { Float.valueOf(f1) });
    }
  }
  
  private String e()
  {
    if ((r == null) || (r.getSelectedTip() == null)) {
      return "no tip option selected_pick up order";
    }
    switch (37.b[r.getSelectedTip().ordinal()])
    {
    default: 
      return "no tip option selected_pick up order";
    case 1: 
      return "cash tip";
    case 2: 
      return "preset option 1";
    case 3: 
      return "preset option 2";
    case 4: 
      return "preset option 3";
    }
    return "custom tip";
  }
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    b(paramb);
  }
  
  public void a(GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes)
  {
    if (P != null) {
      P.a(paramPaymentTypes, null);
    }
  }
  
  public void a(GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes, String paramString)
  {
    if (P != null) {
      P.a(paramPaymentTypes, paramString);
    }
  }
  
  public void a(String paramString)
  {
    Object localObject = GHSApplication.a().b().R();
    if ((E) && (localObject != null))
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        GHSIAddressDataModel localGHSIAddressDataModel = (GHSIAddressDataModel)((Iterator)localObject).next();
        if ((localGHSIAddressDataModel != null) && (paramString != null) && (paramString.equals(localGHSIAddressDataModel.getId()))) {
          Q = localGHSIAddressDataModel;
        }
      }
    }
    q = GHSApplication.a().b().X();
    long l1;
    if (q != null)
    {
      l1 = q.getExpectedTimeInMillis();
      if (l1 == 0L) {
        H = 0;
      }
    }
    else
    {
      return;
    }
    H = com.grubhub.AppBaseLibrary.android.utils.b.a(l1);
  }
  
  public void a(String paramString, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes)
  {
    if (!F)
    {
      ((GHSBaseActivity)getActivity()).a(false);
      return;
    }
    F = false;
    Integer localInteger = q.getAmountDueCents();
    if (localInteger == null)
    {
      b(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
      return;
    }
    if (localInteger.intValue() == 0)
    {
      paramString = q.getGiftCardDiscount();
      if ((paramString != null) && (paramString.getDiscountValueCents() != null) && (q.getGrandTotalCents() != null) && (q.getGrandTotalCents().equals(paramString.getDiscountValueCents())))
      {
        a(q.getCartId(), null, GHSICartPaymentDataModel.PaymentTypes.GIFT_CARD);
        return;
      }
      a(q.getCartId(), null, paramPaymentTypes);
      return;
    }
    a(paramString, paramPaymentTypes, localInteger);
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    J = paramString1;
    K = paramString2;
    L = paramString3;
  }
  
  public void a(boolean paramBoolean, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes1, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes2)
  {
    boolean bool = false;
    u = paramPaymentTypes1;
    G = paramBoolean;
    c(u);
    Integer localInteger = q.getAmountDueCents();
    if ((localInteger != null) && (localInteger.intValue() == 0)) {}
    for (int i1 = 1;; i1 = 0)
    {
      if (!paramBoolean)
      {
        paramBoolean = bool;
        if (i1 == 0) {}
      }
      else
      {
        paramBoolean = true;
      }
      a(paramBoolean);
      a(paramPaymentTypes1, paramPaymentTypes2);
      return;
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    default: 
      return;
    }
    R.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof k)) {
      P = ((k)paramActivity);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Bundle localBundle = getArguments();
    E = localBundle.getString("order_type").equals(com.grubhub.AppBaseLibrary.android.order.g.DELIVERY.toString());
    q = GHSApplication.a().b().X();
    r = GHSApplication.a().b().aa();
    s = GHSApplication.a().b().U();
    t = GHSApplication.d(getActivity());
    ArrayList localArrayList = GHSApplication.a().b().R();
    if (E)
    {
      if ((localArrayList != null) && (localArrayList.size() > 0))
      {
        com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
        Q = ((GHSIAddressDataModel)localArrayList.get(com.grubhub.AppBaseLibrary.android.order.j.a(localb.t(), localb.R(), 0)));
      }
      if (paramBundle == null) {
        break label281;
      }
      I = paramBundle.getString("order_code_input");
      J = paramBundle.getString("pickup_first_name");
      K = paramBundle.getString("pickup_last_name");
      L = paramBundle.getString("pickup_phone_number");
      M = paramBundle.getString("promo_code_button_text");
      N = paramBundle.getString("promo_code_input");
      O = m.access$000(paramBundle.getInt("promo_code_state"));
    }
    for (;;)
    {
      setHasOptionsMenu(true);
      return;
      L = GHSApplication.a().b().B();
      if (TextUtils.isEmpty(L)) {
        break;
      }
      L = com.grubhub.AppBaseLibrary.android.utils.h.a.a(L);
      break;
      label281:
      if ((localArrayList != null) && (localArrayList.size() > 0) && (E)) {
        I = ((GHSIAddressDataModel)localArrayList.get(0)).getDeliveryInstructions();
      }
      M = getString(2131231954);
      c();
      if ((!TextUtils.isEmpty(localBundle.getString("verified_first_name"))) && (!TextUtils.isEmpty(getArguments().getString("verified_last_name"))))
      {
        J = localBundle.getString("verified_first_name");
        K = localBundle.getString("verified_last_name");
      }
      else if (t != null)
      {
        J = t.getFirstName();
        K = t.getLastName();
      }
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903149, null);
    paramViewGroup = paramViewGroup.getContext();
    l = ((GHSLoadingViewFlipper)paramLayoutInflater.findViewById(2131690048));
    l.b();
    a = ((TextView)paramLayoutInflater.findViewById(2131690049));
    paramBundle = a;
    int i1;
    label112:
    label193:
    Object localObject1;
    label448:
    Object localObject2;
    View localView;
    if (E)
    {
      i1 = 2131230981;
      paramBundle.setText(i1);
      b = ((TextView)paramLayoutInflater.findViewById(2131690051));
      if (!E) {
        break label729;
      }
      com.grubhub.AppBaseLibrary.android.utils.g.a(b, J, K, Q);
      ((Button)paramLayoutInflater.findViewById(2131690050)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          GHSReviewOrderFragment.a(GHSReviewOrderFragment.this, paramAnonymousView);
          if (GHSReviewOrderFragment.a(GHSReviewOrderFragment.this) != null)
          {
            if (GHSReviewOrderFragment.b(GHSReviewOrderFragment.this))
            {
              paramAnonymousView = null;
              if (GHSReviewOrderFragment.c(GHSReviewOrderFragment.this) != null) {
                paramAnonymousView = GHSReviewOrderFragment.c(GHSReviewOrderFragment.this).getId();
              }
              GHSReviewOrderFragment.a(GHSReviewOrderFragment.this).f(paramAnonymousView);
            }
          }
          else {
            return;
          }
          GHSReviewOrderFragment.a(GHSReviewOrderFragment.this).a(GHSReviewOrderFragment.d(GHSReviewOrderFragment.this), GHSReviewOrderFragment.e(GHSReviewOrderFragment.this), GHSReviewOrderFragment.f(GHSReviewOrderFragment.this));
        }
      });
      c = ((TextView)paramLayoutInflater.findViewById(2131690064));
      d = ((EditText)paramLayoutInflater.findViewById(2131690066));
      d.addTextChangedListener(new TextWatcher()
      {
        public void afterTextChanged(Editable paramAnonymousEditable)
        {
          GHSReviewOrderFragment.g(GHSReviewOrderFragment.this).setText(String.format(Locale.US, paramAnonymousEditable.length() + "/" + getResources().getInteger(2131492876), new Object[0]));
        }
        
        public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      });
      if (!E) {
        break label751;
      }
      d.setHint(2131231968);
      d.setText(I);
      paramLayoutInflater.findViewById(2131690053).requestFocus();
      k = ((ViewFlipper)paramLayoutInflater.findViewById(2131690055));
      i = ((ProgressBar)paramLayoutInflater.findViewById(2131690057));
      j = ((ProgressBar)paramLayoutInflater.findViewById(2131690058));
      f = ((Button)paramLayoutInflater.findViewById(2131690054));
      f.setOnClickListener(b());
      f.setText(M);
      g = ((TextView)paramLayoutInflater.findViewById(2131690061));
      h = ((TextView)paramLayoutInflater.findViewById(2131690060));
      e = ((EditText)paramLayoutInflater.findViewById(2131690056));
      if (GHSApplication.a().b().F()) {
        e.setHint(2131232073);
      }
      e.addTextChangedListener(new TextWatcher()
      {
        public void afterTextChanged(Editable paramAnonymousEditable)
        {
          Button localButton = GHSReviewOrderFragment.h(GHSReviewOrderFragment.this);
          if (paramAnonymousEditable.length() > 0) {}
          for (boolean bool = true;; bool = false)
          {
            localButton.setEnabled(bool);
            return;
          }
        }
        
        public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      });
      e.setText(N);
      a(O);
      paramBundle = (TextView)paramLayoutInflater.findViewById(2131690071);
      if (s != null) {
        paramBundle.setText(s.getRestaurantName());
      }
      localObject1 = (TextView)paramLayoutInflater.findViewById(2131690068);
      if (!E) {
        break label764;
      }
      i1 = 2131230984;
      ((TextView)localObject1).setText(i1);
      localObject2 = (TextView)paramLayoutInflater.findViewById(2131690069);
      localView = paramLayoutInflater.findViewById(2131690062);
      paramBundle = (LinearLayout)paramLayoutInflater.findViewById(2131690072);
      if (q == null) {
        break label812;
      }
      i1 = com.grubhub.AppBaseLibrary.android.utils.b.a(q.getExpectedTimeInMillis());
      if (i1 > 0) {
        break label772;
      }
      ((TextView)localObject1).setVisibility(8);
      ((TextView)localObject2).setVisibility(8);
      localView.setVisibility(8);
    }
    for (;;)
    {
      paramBundle.removeAllViews();
      localObject1 = q.getOrderItems().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (GHSICartDataModel.GHSIOrderItem)((Iterator)localObject1).next();
        localView = LayoutInflater.from(paramViewGroup).inflate(2130903170, null);
        ((TextView)localView.findViewById(2131690183)).setText(((GHSICartDataModel.GHSIOrderItem)localObject2).getItemQuantity() + " " + ((GHSICartDataModel.GHSIOrderItem)localObject2).getItemName());
        TextView localTextView = (TextView)localView.findViewById(2131690182);
        Locale localLocale = Locale.US;
        String str = paramViewGroup.getString(2131231830);
        float f1 = ((GHSICartDataModel.GHSIOrderItem)localObject2).getItemPrice().floatValue();
        localTextView.setText(String.format(localLocale, str, new Object[] { Float.valueOf(((GHSICartDataModel.GHSIOrderItem)localObject2).getItemQuantity().intValue() * f1) }));
        paramBundle.addView(localView);
      }
      i1 = 2131230982;
      break;
      label729:
      com.grubhub.AppBaseLibrary.android.utils.g.a(b, J, K, L);
      break label112;
      label751:
      d.setHint(2131231969);
      break label193;
      label764:
      i1 = 2131230985;
      break label448;
      label772:
      a(paramViewGroup, (TextView)paramLayoutInflater.findViewById(2131690067), (TextView)localObject2, i1);
      ((TextView)localObject1).setVisibility(0);
      ((TextView)localObject2).setVisibility(0);
      localView.setVisibility(0);
    }
    label812:
    m = ((LinearLayout)paramLayoutInflater.findViewById(2131690073));
    n = ((TextView)paramLayoutInflater.findViewById(2131690074));
    o = ((Button)paramLayoutInflater.findViewById(2131690075));
    o.setEnabled(false);
    d();
    R = GHSPaymentSelectionReviewFragment.j();
    getChildFragmentManager().a().b(2131689962, R, R.getClass().getSimpleName()).a();
    return paramLayoutInflater;
  }
  
  public void onDetach()
  {
    super.onDetach();
    P = null;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      a(getView());
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
      ((GHSBaseActivity)paramMenu).b(2131230867);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    ArrayList localArrayList = GHSApplication.a().b().R();
    if ((localArrayList != null) && (localArrayList.size() > 0) && (E) && (Q != null)) {
      I = Q.getDeliveryInstructions();
    }
    d = ((EditText)getView().findViewById(2131690066));
    if (d != null) {
      d.setText(I);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = new Bundle();
    }
    localBundle.putString("pickup_first_name", J);
    localBundle.putString("pickup_last_name", K);
    localBundle.putString("pickup_phone_number", L);
    localBundle.putInt("promo_code_state", O.ordinal());
    if (d != null) {
      localBundle.putString("order_code_input", d.getText().toString());
    }
    if (e != null) {
      localBundle.putString("promo_code_input", e.getText().toString());
    }
    if (f != null) {
      localBundle.putString("promo_code_button_text", f.getText().toString());
    }
    super.onSaveInstanceState(localBundle);
  }
  
  public void onStart()
  {
    super.onStart();
    com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.ORDER_PROCESSING, "final order review"));
    a();
  }
  
  public void onStop()
  {
    super.onStop();
    if (v != null)
    {
      v.g();
      v = null;
      e.setEnabled(true);
      f.setEnabled(false);
      i.setVisibility(8);
    }
    if (w != null)
    {
      w.g();
      w = null;
      f.setEnabled(false);
      j.setVisibility(8);
    }
    if (x != null)
    {
      x.g();
      x = null;
      o.setEnabled(false);
    }
    if (y != null)
    {
      y.g();
      y = null;
      o.setEnabled(false);
    }
    if (A != null)
    {
      A.g();
      A = null;
      o.setEnabled(false);
    }
    if (z != null)
    {
      z.g();
      z = null;
      o.setEnabled(false);
    }
    if (B != null)
    {
      B.g();
      B = null;
      o.setEnabled(false);
    }
    if (C != null)
    {
      C.g();
      C = null;
    }
    ((GHSBaseActivity)getActivity()).a(false);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSReviewOrderFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */