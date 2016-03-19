package com.grubhub.AppBaseLibrary.android.order.receipt;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.w;
import android.telephony.PhoneNumberUtils;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIDiscountCodeInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIOrderItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.TipTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.order.cart.GHSCancelCartDialogFragment;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.utils.g;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class GHSReceiptFragment
  extends Fragment
  implements com.grubhub.AppBaseLibrary.android.order.cart.b
{
  private GHSICartDataModel a;
  private GHSIRestaurantDataModel b;
  private boolean c;
  private boolean d;
  private String e;
  private String f;
  private String g;
  private String h;
  private b i;
  private GHSICartPaymentDataModel.PaymentTypes j;
  private a k;
  private boolean l;
  private Button m;
  private Button n;
  private Button o;
  
  private int a(int paramInt)
  {
    if (a.isAsapOrder()) {
      paramInt = 8;
    }
    return paramInt;
  }
  
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
  
  public static GHSReceiptFragment a(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes, a parama)
  {
    GHSReceiptFragment localGHSReceiptFragment = new GHSReceiptFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("order_number", paramString1);
    localBundle.putString("first_name", paramString2);
    localBundle.putString("last_name", paramString3);
    if (paramString4 != null) {
      localBundle.putString("phone_number", paramString4);
    }
    localBundle.putBoolean("is_delivery", paramBoolean);
    localBundle.putSerializable("payment_type", paramPaymentTypes);
    localBundle.putSerializable("launch_reason", parama);
    localGHSReceiptFragment.setArguments(localBundle);
    return localGHSReceiptFragment;
  }
  
  private String a(GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes)
  {
    if (paramPaymentTypes == null) {
      return "credit card";
    }
    return paramPaymentTypes.toLoggingString();
  }
  
  private void a(SpannableString paramSpannableString, String paramString1, String paramString2)
  {
    paramSpannableString.setSpan(new StyleSpan(1), paramString1.indexOf(paramString2), paramString1.indexOf(paramString2) + paramString2.length(), 33);
  }
  
  private void a(View paramView)
  {
    if (j == null)
    {
      paramView.findViewById(2131690006).setVisibility(8);
      return;
    }
    TextView localTextView = (TextView)paramView.findViewById(2131690007);
    ImageView localImageView = (ImageView)paramView.findViewById(2131690008);
    paramView.findViewById(2131690006).setVisibility(0);
    switch (6.a[j.ordinal()])
    {
    default: 
      localTextView.setText(paramView.getResources().getString(2131231833));
      localImageView.setImageResource(2130837730);
      localImageView.setContentDescription(getString(2131231233));
      paramView.findViewById(2131690009).setVisibility(a(0));
      return;
    case 1: 
      localTextView.setText(paramView.getResources().getString(2131231833));
      localImageView.setImageResource(2130837683);
      localImageView.setContentDescription(getString(2131231232));
      paramView.findViewById(2131690009).setVisibility(a(8));
      return;
    case 2: 
      boolean bool = GHSApplication.a().b().H();
      localTextView.setText(paramView.getResources().getString(2131232023));
      if (bool) {}
      for (int i1 = 2130837561;; i1 = 2130837884)
      {
        localImageView.setImageResource(i1);
        localImageView.setContentDescription(getString(2131231231));
        paramView.findViewById(2131690009).setVisibility(a(0));
        return;
      }
    case 3: 
      localTextView.setText(paramView.getResources().getString(2131232023));
      localImageView.setImageResource(2130837947);
      localImageView.setContentDescription(getString(2131231235));
      paramView.findViewById(2131690009).setVisibility(a(0));
      return;
    }
    localTextView.setText(paramView.getResources().getString(2131231833));
    localImageView.setImageResource(2130837883);
    localImageView.setContentDescription(getString(2131231234));
    paramView.findViewById(2131690009).setVisibility(a(0));
  }
  
  private void a(String paramString)
  {
    if ((paramString == "call care") || (paramString == "call restaurant")) {
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("exit links", "completed orders", paramString));
    }
  }
  
  private void b(View paramView)
  {
    paramView.findViewById(2131690020).setVisibility(0);
    if (k == a.LAUNCHED_BY_FUTURE_ORDER)
    {
      n.setVisibility(8);
      m.setVisibility(8);
      o.setVisibility(0);
      o.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          GHSCancelCartDialogFragment.a(GHSReceiptFragment.a(GHSReceiptFragment.this).getRestaurantName().trim(), GHSReceiptFragment.b(GHSReceiptFragment.this).getExpectedTimeInMillis()).show(getChildFragmentManager(), GHSCancelCartDialogFragment.class.getSimpleName());
          h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("future ordering", "open order interactions_cta", "stop order step 1"));
        }
      });
    }
    SpannableString localSpannableString;
    for (;;)
    {
      String str1 = new SimpleDateFormat("MMMM d, yyyy", Locale.US).format(new Date(a.getExpectedTimeInMillis()));
      String str2 = new SimpleDateFormat("h:mm a", Locale.US).format(new Date(a.getExpectedTimeInMillis()));
      String str3 = b.getRestaurantName().trim();
      String str4 = String.format(getString(2131231886), new Object[] { str1, str2, str3 });
      localSpannableString = new SpannableString(str4);
      a(localSpannableString, str4, str1);
      a(localSpannableString, str4, str2);
      a(localSpannableString, str4, str3);
      if (!d) {
        break;
      }
      paramView.findViewById(2131689999).setVisibility(8);
      ((TextView)paramView.findViewById(2131690000)).setText(localSpannableString);
      return;
      n.setVisibility(0);
      m.setVisibility(8);
      o.setVisibility(8);
    }
    paramView.findViewById(2131689995).setVisibility(8);
    ((TextView)paramView.findViewById(2131689996)).setText(localSpannableString);
  }
  
  public void a()
  {
    if (i != null) {
      i.c(a.getCartId());
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof b)) {
      i = ((b)paramActivity);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getArguments();
    e = paramBundle.getString("order_number");
    f = paramBundle.getString("first_name");
    g = paramBundle.getString("last_name");
    h = paramBundle.getString("phone_number");
    c = paramBundle.getBoolean("is_delivery");
    j = ((GHSICartPaymentDataModel.PaymentTypes)paramBundle.getSerializable("payment_type"));
    k = ((a)paramBundle.getSerializable("launch_reason"));
    paramBundle = GHSApplication.a().b();
    a = paramBundle.Z();
    b = paramBundle.V();
    d = paramBundle.F();
    if (k == a.LAUNCHED_BY_CART)
    {
      l = org.b.a.a.a(getActivity());
      if (l) {
        com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("APP_RATER_SHOWN");
      }
    }
    setHasOptionsMenu(true);
  }
  
  public View onCreateView(final LayoutInflater paramLayoutInflater, final ViewGroup paramViewGroup, Bundle paramBundle)
  {
    final LinearLayout localLinearLayout = (LinearLayout)paramLayoutInflater.inflate(2130903145, null);
    Context localContext = paramViewGroup.getContext();
    paramViewGroup = (LinearLayout)localLinearLayout.findViewById(2131689994);
    paramBundle = (LinearLayout)localLinearLayout.findViewById(2131689997);
    int i1;
    label103:
    Object localObject2;
    label140:
    Object localObject6;
    Object localObject1;
    Object localObject3;
    TextView localTextView;
    label216:
    Object localObject4;
    label259:
    label305:
    Object localObject5;
    label484:
    label680:
    label711:
    long l1;
    if (d)
    {
      paramViewGroup.setVisibility(8);
      paramBundle.setVisibility(0);
      paramLayoutInflater = (TextView)localLinearLayout.findViewById(2131690000);
      if (c)
      {
        i1 = 2131232077;
        paramLayoutInflater.setText(i1);
        paramLayoutInflater = (TextView)localLinearLayout.findViewById(2131689999);
        localObject2 = (TextView)localLinearLayout.findViewById(2131690024);
        paramViewGroup = (TextView)localLinearLayout.findViewById(2131689996);
        if (!c) {
          break label1116;
        }
        i1 = 2131231884;
        paramViewGroup.setText(i1);
        localObject6 = localLinearLayout.findViewById(2131690001);
        localObject1 = localLinearLayout.findViewById(2131690003);
        localObject3 = (TextView)localLinearLayout.findViewById(2131690005);
        localTextView = (TextView)localLinearLayout.findViewById(2131690004);
        paramViewGroup = (TextView)localLinearLayout.findViewById(2131690012);
        if (!c) {
          break label1124;
        }
        i1 = 2131230984;
        paramViewGroup.setText(i1);
        localObject4 = (TextView)localLinearLayout.findViewById(2131690013);
        paramViewGroup = (TextView)localLinearLayout.findViewById(2131690018);
        if (!c) {
          break label1132;
        }
        i1 = 2131230981;
        paramViewGroup.setText(i1);
        paramViewGroup = (TextView)localLinearLayout.findViewById(2131690019);
        if (!c) {
          break label1140;
        }
        g.a(paramViewGroup, f, g, a.getDeliveryAddress());
        localObject5 = (TextView)localLinearLayout.findViewById(2131690022);
        if (c) {
          break label1169;
        }
        paramBundle = null;
        paramViewGroup = null;
        if (b != null)
        {
          paramBundle = b.getLatitude();
          paramViewGroup = b.getLongitude();
        }
        if ((com.google.android.gms.common.e.a(localContext) != 0) || (b == null) || (TextUtils.isEmpty(paramBundle)) || (TextUtils.isEmpty(paramViewGroup))) {
          break label1159;
        }
        ((View)localObject6).setVisibility(0);
        GHSApplication.a();
        if (!GHSApplication.u())
        {
          paramViewGroup = new LatLng(Double.valueOf(paramBundle).doubleValue(), Double.valueOf(paramViewGroup).doubleValue());
          paramBundle = SupportMapFragment.a();
          localObject6 = getChildFragmentManager().a();
          ((ag)localObject6).b(2131690002, paramBundle);
          ((ag)localObject6).a();
          if (paramBundle != null) {
            paramBundle.a(new com.google.android.gms.maps.e()
            {
              public void a(com.google.android.gms.maps.c paramAnonymousc)
              {
                com.grubhub.AppBaseLibrary.android.utils.e.b.a(paramViewGroupa, paramViewGroupb, 16.0F);
                paramAnonymousc.a(com.google.android.gms.maps.b.a(paramViewGroup, 16.0F));
                paramAnonymousc.a(new MarkerOptions().a(GHSReceiptFragment.a(GHSReceiptFragment.this).getRestaurantName()).a(paramViewGroup)).a();
              }
            });
          }
          ((View)localObject1).setOnTouchListener(new View.OnTouchListener()
          {
            public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
            {
              switch (paramAnonymousMotionEvent.getAction())
              {
              default: 
                return true;
              case 0: 
                localLinearLayout.requestDisallowInterceptTouchEvent(true);
                return false;
              case 1: 
                localLinearLayout.requestDisallowInterceptTouchEvent(false);
                return true;
              }
              localLinearLayout.requestDisallowInterceptTouchEvent(true);
              return false;
            }
          });
        }
        paramViewGroup = (LinearLayout)localLinearLayout.findViewById(2131690025);
        paramBundle = (LinearLayout)localLinearLayout.findViewById(2131690026);
        localObject1 = (TextView)localLinearLayout.findViewById(2131690027);
        m = ((Button)localLinearLayout.findViewById(2131690028));
        n = ((Button)localLinearLayout.findViewById(2131690029));
        o = ((Button)localLinearLayout.findViewById(2131690030));
        if (b != null)
        {
          paramLayoutInflater.setText(String.format(localContext.getString(2131231889), new Object[] { b.getRestaurantName() }));
          ((TextView)localObject2).setText(b.getRestaurantName());
          paramLayoutInflater = b.getRestaurantPhoneNumber();
          if (TextUtils.isEmpty(paramLayoutInflater)) {
            break label1179;
          }
          m.setText(String.format(localContext.getString(2131231879), new Object[] { PhoneNumberUtils.formatNumber(paramLayoutInflater) }));
          m.setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymousView)
            {
              if (GHSApplication.n())
              {
                paramAnonymousView = "tel: " + paramLayoutInflater;
                Intent localIntent = new Intent("android.intent.action.DIAL");
                localIntent.setData(Uri.parse(paramAnonymousView));
                startActivity(localIntent);
                GHSReceiptFragment.a(GHSReceiptFragment.this, "call restaurant");
                return;
              }
              com.grubhub.AppBaseLibrary.android.c.a(getActivity(), 2131231322, 2131231321, 0, 0, 2131231717, null);
            }
          });
        }
        if (a == null) {
          break label1817;
        }
        if (!com.grubhub.AppBaseLibrary.android.utils.f.a(e)) {
          break label1200;
        }
        ((TextView)localObject3).setVisibility(8);
        localTextView.setVisibility(8);
        l1 = a.getExpectedTimeInMillis();
        i1 = com.grubhub.AppBaseLibrary.android.utils.b.a(l1);
        if (a.isAsapOrder()) {
          break label1212;
        }
        ((TextView)localLinearLayout.findViewById(2131690017)).setText(new SimpleDateFormat("MMMM d, yyyy, h:mm a", Locale.US).format(new Date(a.getTimePlacedMillis())));
        localLinearLayout.findViewById(2131690011).setVisibility(8);
        localLinearLayout.findViewById(2131690010).setVisibility(8);
        localLinearLayout.findViewById(2131690015).setVisibility(0);
        localLinearLayout.findViewById(2131690014).setVisibility(0);
        label837:
        if (!TextUtils.isEmpty(a.getOrderSpecialInstructions())) {
          break label1338;
        }
        paramLayoutInflater = localLinearLayout.findViewById(2131690021);
        localObject2 = localLinearLayout.findViewById(2131690023);
        paramLayoutInflater.setVisibility(8);
        ((View)localObject2).setVisibility(8);
      }
    }
    float f1;
    for (;;)
    {
      paramViewGroup.removeAllViews();
      if (a.getOrderItems() == null) {
        break label1355;
      }
      paramLayoutInflater = a.getOrderItems().iterator();
      while (paramLayoutInflater.hasNext())
      {
        localObject2 = (GHSICartDataModel.GHSIOrderItem)paramLayoutInflater.next();
        localObject3 = LayoutInflater.from(localContext).inflate(2130903170, null);
        ((TextView)((View)localObject3).findViewById(2131690183)).setText(((GHSICartDataModel.GHSIOrderItem)localObject2).getItemQuantity() + " " + ((GHSICartDataModel.GHSIOrderItem)localObject2).getItemName());
        localTextView = (TextView)((View)localObject3).findViewById(2131690182);
        localObject4 = Locale.US;
        localObject5 = localContext.getString(2131231830);
        f1 = ((GHSICartDataModel.GHSIOrderItem)localObject2).getItemPrice().floatValue();
        localTextView.setText(String.format((Locale)localObject4, (String)localObject5, new Object[] { Float.valueOf(((GHSICartDataModel.GHSIOrderItem)localObject2).getItemQuantity().intValue() * f1) }));
        paramViewGroup.addView((View)localObject3);
      }
      i1 = 2131232078;
      break;
      paramLayoutInflater = (TextView)localLinearLayout.findViewById(2131689995);
      paramViewGroup.setVisibility(0);
      paramBundle.setVisibility(8);
      break label103;
      label1116:
      i1 = 2131231885;
      break label140;
      label1124:
      i1 = 2131230985;
      break label216;
      label1132:
      i1 = 2131230982;
      break label259;
      label1140:
      g.a(paramViewGroup, f, g, h);
      break label305;
      label1159:
      ((View)localObject6).setVisibility(8);
      break label484;
      label1169:
      ((View)localObject6).setVisibility(8);
      break label484;
      label1179:
      m.setText(2131231880);
      m.setEnabled(false);
      break label680;
      label1200:
      ((TextView)localObject3).setText(e);
      break label711;
      label1212:
      if (i1 <= 0)
      {
        localLinearLayout.findViewById(2131690011).setVisibility(8);
        localLinearLayout.findViewById(2131690010).setVisibility(8);
        localLinearLayout.findViewById(2131690015).setVisibility(8);
        localLinearLayout.findViewById(2131690014).setVisibility(8);
        break label837;
      }
      ((TextView)localObject4).setText(com.grubhub.AppBaseLibrary.android.utils.b.a(l1, 600000L));
      localLinearLayout.findViewById(2131690011).setVisibility(0);
      localLinearLayout.findViewById(2131690010).setVisibility(0);
      localLinearLayout.findViewById(2131690015).setVisibility(8);
      localLinearLayout.findViewById(2131690014).setVisibility(8);
      break label837;
      label1338:
      ((TextView)localObject5).setText(a.getOrderSpecialInstructions());
    }
    label1355:
    paramBundle.removeAllViews();
    paramViewGroup = a.getCoupon();
    if (paramViewGroup != null)
    {
      if (paramViewGroup.getDescription() != null)
      {
        paramLayoutInflater = String.format(Locale.US, getString(2131231961), new Object[] { paramViewGroup.getDescription() });
        if (paramViewGroup.getAmount() == null) {
          break label1837;
        }
        f1 = Math.abs(paramViewGroup.getAmount().floatValue());
        label1432:
        if (f1 <= 0.0F) {
          break label1843;
        }
        paramViewGroup = String.format(Locale.US, getString(2131231311), new Object[] { Float.valueOf(f1) });
        label1465:
        paramBundle.addView(a(localContext, paramLayoutInflater, paramViewGroup));
      }
    }
    else
    {
      paramBundle.addView(a(localContext, 2131230990, String.format(Locale.US, localContext.getString(2131231830), new Object[] { a.getSubtotal() })));
      paramBundle.addView(a(localContext, 2131230989, String.format(Locale.US, localContext.getString(2131231830), new Object[] { a.getTax() })));
      if (c) {
        paramBundle.addView(a(localContext, 2131230983, String.format(Locale.US, localContext.getString(2131231830), new Object[] { a.getDeliveryFee() })));
      }
      if (a.getTipType() != GHSICartDataModel.TipTypes.CASH) {
        break label1871;
      }
      paramLayoutInflater = getResources().getString(2131230993);
      label1639:
      paramBundle.addView(a(localContext, 2131230991, paramLayoutInflater));
      paramLayoutInflater = a.getAppliedDiscount();
      if (paramLayoutInflater != null)
      {
        if (paramLayoutInflater.getDiscountValue() == null) {
          break label1905;
        }
        f1 = paramLayoutInflater.getDiscountValue().floatValue();
        label1687:
        paramBundle.addView(a(localContext, 2131230988, String.format(Locale.US, localContext.getString(2131231311), new Object[] { Float.valueOf(Math.abs(f1)) })));
      }
      ((TextView)localObject1).setText(String.format(Locale.US, ((TextView)localObject1).getContext().getString(2131231830), new Object[] { a.getAmountDue() }));
      paramLayoutInflater = localContext.getString(2131231014);
      if (TextUtils.isEmpty(paramLayoutInflater)) {
        break label1911;
      }
      n.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("RECEIPT_CALL_CUSTOMER_SERVICE", new HashMap() {});
          if (GHSApplication.n())
          {
            paramAnonymousView = "tel: " + paramLayoutInflater;
            Intent localIntent = new Intent("android.intent.action.DIAL");
            localIntent.setData(Uri.parse(paramAnonymousView));
            startActivity(localIntent);
            GHSReceiptFragment.a(GHSReceiptFragment.this, "call care");
            return;
          }
          com.grubhub.AppBaseLibrary.android.c.a(getActivity(), 2131231322, 2131231321, 0, 0, 2131231717, null);
        }
      });
    }
    for (;;)
    {
      if (!a.isAsapOrder()) {
        b(localLinearLayout);
      }
      label1817:
      a(localLinearLayout);
      return localLinearLayout;
      paramLayoutInflater = getString(2131231960);
      break;
      label1837:
      f1 = 0.0F;
      break label1432;
      label1843:
      paramViewGroup = String.format(Locale.US, getString(2131231830), new Object[] { Float.valueOf(0.0F) });
      break label1465;
      label1871:
      paramLayoutInflater = String.format(Locale.US, localContext.getString(2131231830), new Object[] { a.getTip() });
      break label1639;
      label1905:
      f1 = 0.0F;
      break label1687;
      label1911:
      n.setEnabled(false);
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    i = null;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      paramMenuItem = getActivity();
      if (paramMenuItem != null) {
        paramMenuItem.onBackPressed();
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
      if (k != a.LAUNCHED_BY_FUTURE_ORDER) {
        break label48;
      }
    }
    label48:
    for (int i1 = 2131230865;; i1 = 2131230864)
    {
      ((GHSBaseActivity)paramMenu).b(i1);
      return;
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if (k == a.LAUNCHED_BY_ORDER_STATUS) {
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, com.grubhub.AppBaseLibrary.android.utils.c.f.ORDER_STATUS_TRACKING, "order tracking receipt"));
    }
    for (;;)
    {
      h.a().a(b.isManagedDelivery());
      return;
      if (k != a.LAUNCHED_BY_FUTURE_ORDER) {
        break;
      }
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, com.grubhub.AppBaseLibrary.android.utils.c.f.USER_ACCOUNT_INFO, "open future order details"));
    }
    h localh = h.a();
    com.grubhub.AppBaseLibrary.android.utils.c.e locale = com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP;
    com.grubhub.AppBaseLibrary.android.utils.c.f localf = com.grubhub.AppBaseLibrary.android.utils.c.f.THANK_YOU;
    if (b != null) {}
    for (String str = b.getRestaurantId();; str = null)
    {
      localh.b(new com.grubhub.AppBaseLibrary.android.utils.c.b(locale, localf, "thank you", str, a(j)));
      break;
    }
  }
  
  public void onStop()
  {
    h.a().b();
    h.a().e();
    h.a().f();
    super.onStop();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.receipt.GHSReceiptFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */