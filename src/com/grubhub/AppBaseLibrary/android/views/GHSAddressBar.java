package com.grubhub.AppBaseLibrary.android.views;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.view.r;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.n;
import com.grubhub.AppBaseLibrary.android.order.g;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

public class GHSAddressBar
  extends RelativeLayout
{
  private static final String i = GHSAddressBar.class.getSimpleName();
  private static final String j = i + ".AddressOverlay";
  private static final String k = i + ".AddressDropdown";
  private GHSLoadingViewFlipper A;
  private Dialog B;
  private Dialog C;
  private WeakReference<View> D;
  protected View a;
  protected GHSAutoCompleteTextView b;
  protected ImageView c;
  protected ImageView d;
  protected View e;
  protected TextView.OnEditorActionListener f = new TextView.OnEditorActionListener()
  {
    public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
      boolean bool = false;
      if (paramAnonymousInt == 3)
      {
        GHSAddressBar.a(GHSAddressBar.this, false);
        bool = true;
      }
      return bool;
    }
  };
  protected View.OnClickListener g = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      GHSAddressBar.a(GHSAddressBar.this);
      d();
    }
  };
  protected AdapterView.OnItemClickListener h = new AdapterView.OnItemClickListener()
  {
    public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      ((c)b.getAdapter()).a();
      GHSAddressBar.a(GHSAddressBar.this, false);
    }
  };
  private String l;
  private GHSIAddressDataModel m;
  private g n;
  private String o;
  private ArrayList<View> p;
  private int q;
  private int r;
  private boolean s;
  private boolean t;
  private LocationListener u;
  private Handler v;
  private Runnable w;
  private b x;
  private View y;
  private ListView z;
  
  public GHSAddressBar(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }
  
  public GHSAddressBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public GHSAddressBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  private SpannableString a(Context paramContext, String paramString1, g paramg, String paramString2)
  {
    Object localObject = null;
    if (!TextUtils.isEmpty(paramString1))
    {
      localObject = new StringBuilder();
      if (paramg == null) {
        break label173;
      }
      switch (10.a[paramg.ordinal()])
      {
      default: 
        paramg = paramContext.getString(2131230907);
        ((StringBuilder)localObject).append(paramg).append(" - ");
      }
    }
    for (;;)
    {
      if (!TextUtils.isEmpty(paramString2)) {
        ((StringBuilder)localObject).append(paramString2).append(": ");
      }
      ((StringBuilder)localObject).append(paramString1);
      localObject = new SpannableString(((StringBuilder)localObject).toString());
      if (!TextUtils.isEmpty(paramg)) {
        ((SpannableString)localObject).setSpan(new GHSTypefaceSpan(null, h.a(paramContext, paramContext.getString(2131231647))), 0, paramg.length(), 33);
      }
      return (SpannableString)localObject;
      paramg = paramContext.getString(2131230908);
      break;
      paramg = paramContext.getString(2131230909);
      break;
      label173:
      paramg = null;
    }
  }
  
  private Integer a(ViewGroup paramViewGroup)
  {
    Integer localInteger = null;
    int i1 = 0;
    Object localObject = localInteger;
    if (i1 < paramViewGroup.getChildCount())
    {
      localObject = paramViewGroup.getChildAt(i1);
      if (localObject == this) {
        localObject = Integer.valueOf(i1);
      }
    }
    else
    {
      return (Integer)localObject;
    }
    if (((localObject instanceof ViewGroup)) && (b((ViewGroup)localObject))) {
      localInteger = Integer.valueOf(i1);
    }
    for (;;)
    {
      i1 += 1;
      break;
    }
  }
  
  private void a(int paramInt)
  {
    if ((z != null) && (z.getAdapter() != null) && (z.getAdapter().getCount() > 0) && (paramInt >= 0) && (paramInt < z.getAdapter().getCount()))
    {
      m = ((GHSIAddressDataModel)z.getAdapter().getItem(paramInt));
      l = com.grubhub.AppBaseLibrary.android.order.a.b(m);
      n = getSelectedFilterOption();
      o = m.getLabel();
      ((c)b.getAdapter()).a();
      c();
      if (x != null) {
        x.a(m, l, n);
      }
    }
  }
  
  private void a(Dialog paramDialog)
  {
    if (paramDialog != null)
    {
      View localView = paramDialog.findViewById(2131689648);
      if (localView != null)
      {
        int i2 = 0;
        int i1 = i2;
        if (D != null)
        {
          i1 = i2;
          if (D.get() != null) {
            i1 = ((View)D.get()).getMeasuredHeight();
          }
        }
        i2 = GHSApplication.p();
        int i3 = GHSApplication.q();
        int i4 = GHSApplication.r();
        int i5 = getMeasuredHeight();
        localView.measure(View.MeasureSpec.makeMeasureSpec(i2, 1073741824), View.MeasureSpec.makeMeasureSpec(i3 - i4 - i5 - i1, Integer.MIN_VALUE));
        Window localWindow = paramDialog.getWindow();
        WindowManager.LayoutParams localLayoutParams = localWindow.getAttributes();
        gravity = 49;
        y = (i1 + GHSApplication.t() + q);
        width = (i2 - q * 2);
        height = localView.getMeasuredHeight();
        localWindow.setAttributes(localLayoutParams);
      }
      paramDialog.show();
    }
  }
  
  private void a(View paramView1, final View paramView2, boolean paramBoolean1, final boolean paramBoolean2)
  {
    if (paramView1 != null)
    {
      if (!paramBoolean1) {
        break label66;
      }
      if (paramView1.getVisibility() != 0)
      {
        localAnimation = AnimationUtils.loadAnimation(paramView1.getContext(), 2130968610);
        localAnimation.setInterpolator(new DecelerateInterpolator(2.0F));
        localAnimation.setAnimationListener(new Animation.AnimationListener()
        {
          public void onAnimationEnd(Animation paramAnonymousAnimation)
          {
            GHSAddressBar.a(GHSAddressBar.this, paramView2, true);
          }
          
          public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
          
          public void onAnimationStart(Animation paramAnonymousAnimation) {}
        });
        paramView1.setAnimation(localAnimation);
        paramView1.setVisibility(0);
      }
    }
    label66:
    while (paramView1.getVisibility() != 0) {
      return;
    }
    Animation localAnimation = AnimationUtils.loadAnimation(paramView1.getContext(), 2130968617);
    localAnimation.setInterpolator(new AccelerateInterpolator(2.0F));
    localAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        if (!paramBoolean2) {
          GHSAddressBar.a(GHSAddressBar.this, paramView2, false);
        }
        if ((GHSAddressBar.l(GHSAddressBar.this) != null) && (GHSAddressBar.l(GHSAddressBar.this).get() != null)) {
          ((View)GHSAddressBar.l(GHSAddressBar.this).get()).setVisibility(0);
        }
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    paramView1.setAnimation(localAnimation);
    paramView1.setVisibility(8);
  }
  
  private void a(View paramView, boolean paramBoolean)
  {
    if (paramView != null)
    {
      if (!paramBoolean) {
        break label49;
      }
      if (paramView.getVisibility() != 0)
      {
        localAnimation = AnimationUtils.loadAnimation(paramView.getContext(), 17432576);
        localAnimation.setInterpolator(new DecelerateInterpolator(2.0F));
        paramView.setAnimation(localAnimation);
        paramView.setVisibility(0);
      }
    }
    label49:
    while (paramView.getVisibility() != 0) {
      return;
    }
    Animation localAnimation = AnimationUtils.loadAnimation(paramView.getContext(), 17432577);
    localAnimation.setInterpolator(new AccelerateInterpolator(2.0F));
    paramView.setAnimation(localAnimation);
    paramView.setVisibility(8);
  }
  
  private void a(boolean paramBoolean)
  {
    int i2 = 0;
    Object localObject;
    if (c != null)
    {
      localObject = c;
      if (!paramBoolean) {
        break label115;
      }
    }
    label115:
    for (int i1 = 0;; i1 = 4)
    {
      ((ImageView)localObject).setVisibility(i1);
      if (b != null)
      {
        int i6 = (int)getResources().getDimension(2131427392);
        localObject = b;
        int i3 = b.getPaddingLeft();
        int i4 = b.getPaddingTop();
        int i5 = r;
        i1 = i2;
        if (paramBoolean) {
          i1 = c.getMeasuredWidth() + i6;
        }
        ((GHSAutoCompleteTextView)localObject).setPadding(i3, i4, i5 + i1, b.getPaddingBottom());
      }
      return;
    }
  }
  
  private boolean a(Location paramLocation1, Location paramLocation2)
  {
    if (paramLocation2 == null) {}
    int i2;
    int i3;
    label41:
    int i1;
    label68:
    label74:
    label77:
    for (;;)
    {
      return true;
      long l1 = paramLocation1.getTime() - paramLocation2.getTime();
      if (l1 > 120000L)
      {
        i2 = 1;
        if (l1 >= -120000L) {
          break label68;
        }
        i3 = 1;
        if (l1 <= 0L) {
          break label74;
        }
      }
      for (i1 = 1;; i1 = 0)
      {
        if (i2 != 0) {
          break label77;
        }
        if (i3 == 0) {
          break label79;
        }
        return false;
        i2 = 0;
        break;
        i3 = 0;
        break label41;
      }
    }
    label79:
    int i4 = (int)(paramLocation1.getAccuracy() - paramLocation2.getAccuracy());
    if (i4 > 0)
    {
      i2 = 1;
      label99:
      if (i4 >= 0) {
        break label168;
      }
      i3 = 1;
      label107:
      if (i4 <= 200) {
        break label174;
      }
    }
    label168:
    label174:
    for (i4 = 1;; i4 = 0)
    {
      boolean bool = a(paramLocation1.getProvider(), paramLocation2.getProvider());
      if ((i2 != 0) || ((i1 != 0) && (i3 == 0)) || ((i1 != 0) && (i4 == 0) && (bool))) {
        break;
      }
      return false;
      i2 = 0;
      break label99;
      i3 = 0;
      break label107;
    }
  }
  
  private boolean a(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return paramString2 == null;
    }
    return paramString1.equals(paramString2);
  }
  
  private void b(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = l;; str = b.getText().toString())
    {
      if ((o != null) && (str != null) && (!str.equals(l)))
      {
        m = null;
        o = null;
      }
      l = str;
      n = getSelectedFilterOption();
      c();
      if (x != null)
      {
        if ((o == null) || (m == null)) {
          break;
        }
        x.a(m, l, n);
      }
      return;
    }
    x.a(l, n, o);
  }
  
  private boolean b(ViewGroup paramViewGroup)
  {
    boolean bool2 = false;
    int i1 = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      View localView;
      if (i1 < paramViewGroup.getChildCount())
      {
        localView = paramViewGroup.getChildAt(i1);
        if (localView == this) {
          bool1 = true;
        }
      }
      else
      {
        return bool1;
      }
      if ((localView instanceof ViewGroup)) {
        return b((ViewGroup)localView);
      }
      i1 += 1;
    }
  }
  
  private void f()
  {
    ((c)b.getAdapter()).a();
    b.setText(l);
    if ((D != null) && (D.get() != null)) {
      ((View)D.get()).setVisibility(4);
    }
    if (b.getText().length() > 0) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      a(a, y, true, false);
      t = true;
      if (x != null) {
        x.j_();
      }
      return;
    }
  }
  
  private void g()
  {
    ((InputMethodManager)getContext().getSystemService("input_method")).hideSoftInputFromWindow(getWindowToken(), 2);
  }
  
  private Location getBestLastKnownLocation()
  {
    Object localObject = (LocationManager)getContext().getSystemService("location");
    Location localLocation1 = ((LocationManager)localObject).getLastKnownLocation("gps");
    Location localLocation2 = ((LocationManager)localObject).getLastKnownLocation("network");
    if (localLocation1 != null)
    {
      localObject = localLocation2;
      if (a(localLocation1, localLocation2)) {
        localObject = localLocation1;
      }
    }
    do
    {
      return (Location)localObject;
      if (localLocation2 == null) {
        break;
      }
      localObject = localLocation2;
    } while (a(localLocation2, localLocation1));
    return localLocation1;
    return null;
  }
  
  private g getSelectedFilterOption()
  {
    if (p != null)
    {
      Iterator localIterator = p.iterator();
      while (localIterator.hasNext())
      {
        View localView = (View)localIterator.next();
        if (localView.isSelected()) {
          return (g)localView.getTag();
        }
      }
    }
    return null;
  }
  
  private void h()
  {
    ((InputMethodManager)getContext().getSystemService("input_method")).showSoftInput(b, 1);
  }
  
  private void setSelectedFilterOption(g paramg)
  {
    if (p != null)
    {
      Iterator localIterator = p.iterator();
      if (localIterator.hasNext())
      {
        View localView = (View)localIterator.next();
        if (localView.getTag() == paramg) {}
        for (boolean bool = true;; bool = false)
        {
          localView.setSelected(bool);
          break;
        }
      }
    }
  }
  
  protected void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    int i1;
    if (!isInEditMode())
    {
      if (paramAttributeSet == null) {
        break label854;
      }
      paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, n.com_grubhub_AppBaseLibrary_android_views_GHSAddressBar);
      i1 = paramAttributeSet.getResourceId(0, 0);
      q = paramAttributeSet.getDimensionPixelSize(1, 0);
      s = paramAttributeSet.getBoolean(2, false);
      paramAttributeSet.recycle();
    }
    for (;;)
    {
      LayoutInflater.from(paramContext).inflate(2130903076, this, true);
      y = LayoutInflater.from(getContext()).inflate(2130903083, null, false);
      y.setTag(j);
      y.setVisibility(8);
      y.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          c();
        }
      });
      a = LayoutInflater.from(getContext()).inflate(2130903079, null, false);
      a.setTag(k);
      a.setVisibility(8);
      paramContext = new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if ((paramAnonymousView.getTag() instanceof g)) {
            GHSAddressBar.a(GHSAddressBar.this, (g)paramAnonymousView.getTag());
          }
        }
      };
      paramAttributeSet = (Button)a.findViewById(2131689654);
      paramAttributeSet.setTag(g.DELIVERY);
      paramAttributeSet.setOnClickListener(paramContext);
      Button localButton1 = (Button)a.findViewById(2131689655);
      localButton1.setTag(g.PICKUP);
      localButton1.setOnClickListener(paramContext);
      Button localButton2 = (Button)a.findViewById(2131689657);
      localButton2.setTag(g.DELIVERY_OR_PICKUP);
      localButton2.setOnClickListener(paramContext);
      z = ((ListView)a.findViewById(2131689647));
      z.setAdapter(new d(null));
      z.setOnItemClickListener(new AdapterView.OnItemClickListener()
      {
        public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          GHSAddressBar.a(GHSAddressBar.this, paramAnonymousInt);
        }
      });
      p = new ArrayList(Arrays.asList(new Button[] { paramAttributeSet, localButton1, localButton2 }));
      A = ((GHSLoadingViewFlipper)a.findViewById(2131689645));
      A.b();
      u = new LocationListener()
      {
        public void onLocationChanged(Location paramAnonymousLocation)
        {
          com.grubhub.AppBaseLibrary.android.utils.e.a.c(GHSAddressBar.e(), "Location update: " + paramAnonymousLocation.getLatitude() + ", " + paramAnonymousLocation.getLongitude());
          GHSAddressBar.b(GHSAddressBar.this, GHSAddressBar.b(GHSAddressBar.this));
          ((c)b.getAdapter()).a();
          c();
          if (GHSAddressBar.c(GHSAddressBar.this) != null) {
            GHSAddressBar.c(GHSAddressBar.this).a(paramAnonymousLocation.getLatitude(), paramAnonymousLocation.getLongitude(), GHSAddressBar.d(GHSAddressBar.this));
          }
        }
        
        public void onProviderDisabled(String paramAnonymousString) {}
        
        public void onProviderEnabled(String paramAnonymousString) {}
        
        public void onStatusChanged(String paramAnonymousString, int paramAnonymousInt, Bundle paramAnonymousBundle) {}
      };
      v = new Handler();
      w = new Runnable()
      {
        public void run()
        {
          GHSAddressBar.a(GHSAddressBar.this, GHSAddressBar.e(GHSAddressBar.this));
          c();
        }
      };
      e = a.findViewById(2131689644);
      e.setOnClickListener(g);
      b = ((GHSAutoCompleteTextView)findViewById(2131689638));
      b.setAutoCompleteEnabled(true);
      b.setThrottleEnabled(true);
      b.setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          if (!GHSAddressBar.f(GHSAddressBar.this)) {
            GHSAddressBar.g(GHSAddressBar.this);
          }
          if (GHSAddressBar.c(GHSAddressBar.this) != null) {
            GHSAddressBar.c(GHSAddressBar.this).d();
          }
          return false;
        }
      });
      b.setOnEditorActionListener(f);
      b.addTextChangedListener(new TextWatcher()
      {
        public void afterTextChanged(Editable paramAnonymousEditable)
        {
          GHSAddressBar localGHSAddressBar = GHSAddressBar.this;
          if ((GHSAddressBar.f(GHSAddressBar.this)) && (paramAnonymousEditable.length() > 0)) {}
          for (boolean bool = true;; bool = false)
          {
            GHSAddressBar.b(localGHSAddressBar, bool);
            return;
          }
        }
        
        public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      });
      b.setKeyEventCallback(this);
      b.setAdapter(new c(this, getContext()));
      b.setOnItemClickListener(h);
      r = b.getPaddingRight();
      if (i1 > 0)
      {
        int i2 = b.getPaddingLeft();
        int i3 = b.getPaddingTop();
        int i4 = b.getPaddingRight();
        int i5 = b.getPaddingBottom();
        b.setBackgroundResource(i1);
        b.setPadding(i2, i3, i4, i5);
      }
      c = ((ImageView)findViewById(2131689640));
      c.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          b.setText("");
        }
      });
      d = ((ImageView)findViewById(2131689639));
      if (n == null) {
        n = g.DELIVERY;
      }
      setSelectedFilterOption(n);
      C = new Dialog(getContext(), 2131296791);
      C.setContentView(2130903081);
      C.setCanceledOnTouchOutside(false);
      ((Button)C.findViewById(2131689652)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          GHSAddressBar.h(GHSAddressBar.this).dismiss();
          paramAnonymousView = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
          getContext().startActivity(paramAnonymousView);
        }
      });
      B = new Dialog(getContext(), 2131296791);
      B.setContentView(2130903080);
      B.setCanceledOnTouchOutside(false);
      B.setOnDismissListener(new DialogInterface.OnDismissListener()
      {
        public void onDismiss(DialogInterface paramAnonymousDialogInterface)
        {
          if (!GHSAddressBar.f(GHSAddressBar.this)) {
            GHSAddressBar.a(GHSAddressBar.this, GHSAddressBar.i(GHSAddressBar.this), false);
          }
        }
      });
      ((Button)B.findViewById(2131689650)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          GHSAddressBar.e(GHSAddressBar.this).dismiss();
          GHSAddressBar.g(GHSAddressBar.this);
          b.requestFocus();
          GHSAddressBar.k(GHSAddressBar.this).postDelayed(new Runnable()
          {
            public void run()
            {
              GHSAddressBar.j(GHSAddressBar.this);
            }
          }, 250L);
          if (GHSAddressBar.c(GHSAddressBar.this) != null) {
            GHSAddressBar.c(GHSAddressBar.this).d();
          }
        }
      });
      ((Button)B.findViewById(2131689649)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          GHSAddressBar.e(GHSAddressBar.this).dismiss();
          GHSAddressBar.g(GHSAddressBar.this);
          GHSAddressBar.a(GHSAddressBar.this);
          d();
        }
      });
      if (s)
      {
        a.findViewById(2131689656).setVisibility(0);
        localButton2.setVisibility(0);
        localButton1.setBackgroundResource(2130837632);
      }
      return;
      label854:
      i1 = 0;
    }
  }
  
  public void a(String paramString1, g paramg, String paramString2, String paramString3, boolean paramBoolean)
  {
    int i1;
    if (paramString1 != null)
    {
      l = paramString1;
      n = paramg;
      o = paramString3;
      setSelectedFilterOption(n);
      ((c)b.getAdapter()).a();
      b.setText(a(getContext(), l, n, o));
      if ((TextUtils.isEmpty(paramString2)) || (z == null) || (z.getAdapter() == null) || (z.getAdapter().getCount() <= 0)) {
        break label207;
      }
      i1 = 0;
      label110:
      if (i1 >= z.getAdapter().getCount()) {
        break label207;
      }
      paramString1 = (GHSIAddressDataModel)z.getAdapter().getItem(i1);
      if ((paramString1 == null) || (!paramString2.equals(paramString1.getId()))) {
        break label192;
      }
      m = paramString1;
    }
    for (;;)
    {
      if (paramBoolean)
      {
        if (i1 != -1) {
          a(i1);
        }
      }
      else
      {
        return;
        paramString1 = "";
        break;
        label192:
        i1 += 1;
        break label110;
      }
      b(true);
      return;
      label207:
      i1 = -1;
    }
  }
  
  public void a(ArrayList<GHSIAddressDataModel> paramArrayList, boolean paramBoolean)
  {
    if (z != null)
    {
      d locald = (d)z.getAdapter();
      locald.a(paramArrayList);
      if (paramBoolean)
      {
        if (locald.getCount() <= 0) {
          break label123;
        }
        m = locald.a(0);
        l = d.a(locald, m, false);
        n = getSelectedFilterOption();
        o = m.getLabel();
        ((c)b.getAdapter()).a();
        c();
        if (x != null) {
          x.a(m, l, n);
        }
      }
    }
    return;
    label123:
    a(l, n, null, null, true);
  }
  
  public boolean a()
  {
    return t;
  }
  
  public void b()
  {
    v.removeCallbacks(w);
    setLocationLoading(false);
    ((LocationManager)getContext().getSystemService("location")).removeUpdates(u);
  }
  
  public void c()
  {
    boolean bool1 = t;
    t = false;
    b();
    ((c)b.getAdapter()).a();
    b.setText(a(getContext(), l, n, o));
    setSelectedFilterOption(n);
    a(false);
    boolean bool2 = B.isShowing();
    a(a, y, false, bool2);
    g();
    b.clearFocus();
    if (x != null)
    {
      x.i_();
      if (bool1) {
        x.h();
      }
    }
  }
  
  public void d()
  {
    LocationManager localLocationManager = (LocationManager)getContext().getSystemService("location");
    boolean bool1 = localLocationManager.isProviderEnabled("gps");
    boolean bool2 = localLocationManager.isProviderEnabled("network");
    int i1;
    if ((bool2) && (GHSApplication.m())) {
      i1 = 1;
    }
    while ((bool1) || (bool2))
    {
      Object localObject = getBestLastKnownLocation();
      if (localObject != null)
      {
        com.grubhub.AppBaseLibrary.android.utils.e.a.c(i, "Best last known location: " + ((Location)localObject).getLatitude() + ", " + ((Location)localObject).getLongitude());
        n = getSelectedFilterOption();
        ((c)b.getAdapter()).a();
        c();
        if (x != null) {
          x.a(((Location)localObject).getLatitude(), ((Location)localObject).getLongitude(), n);
        }
        return;
        i1 = 0;
      }
      else
      {
        if ((bool1) || (i1 != 0))
        {
          if (i1 != 0) {}
          for (localObject = "network";; localObject = "gps")
          {
            localLocationManager.requestSingleUpdate((String)localObject, u, null);
            setLocationLoading(true);
            v.postDelayed(w, 60000L);
            return;
          }
        }
        a(B);
        c();
        return;
      }
    }
    a(C);
    com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("LOCATION_SERVICES_PROMPT");
  }
  
  public boolean dispatchKeyEventPreIme(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getKeyCode() == 4)
    {
      c();
      return true;
    }
    return super.dispatchKeyEventPreIme(paramKeyEvent);
  }
  
  public String getCurrentAddress()
  {
    return l;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    b();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 84) && (t))
    {
      r.b(paramKeyEvent);
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 84) && (t))
    {
      b(false);
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if (!paramBoolean) {
      b();
    }
  }
  
  public void setAddressBarListener(b paramb)
  {
    x = paramb;
  }
  
  public void setAddressDropdownContainer(ViewGroup paramViewGroup)
  {
    ViewGroup.LayoutParams localLayoutParams;
    if (paramViewGroup != null)
    {
      Integer localInteger = a(paramViewGroup);
      localLayoutParams = new ViewGroup.LayoutParams(-1, -2);
      if (localInteger == null) {
        break label71;
      }
      if (paramViewGroup.findViewWithTag(k) == null) {
        paramViewGroup.addView(a, localInteger.intValue(), localLayoutParams);
      }
      if (paramViewGroup.findViewWithTag(j) == null) {
        paramViewGroup.addView(y, localInteger.intValue());
      }
    }
    label71:
    do
    {
      return;
      if (paramViewGroup.findViewWithTag(j) == null) {
        paramViewGroup.addView(y);
      }
    } while (paramViewGroup.findViewWithTag(k) != null);
    paramViewGroup.addView(a, localLayoutParams);
  }
  
  public void setHideView(View paramView)
  {
    D = new WeakReference(paramView);
  }
  
  public void setLocationLoading(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      A.a();
      e.setEnabled(false);
      return;
    }
    A.b();
    e.setEnabled(true);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSAddressBar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */