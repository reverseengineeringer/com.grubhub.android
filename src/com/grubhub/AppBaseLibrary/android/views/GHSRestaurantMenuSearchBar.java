package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.n;
import java.util.ArrayList;
import java.util.Locale;

public class GHSRestaurantMenuSearchBar
  extends RelativeLayout
{
  private static final String a = GHSRestaurantMenuSearchBar.class.getSimpleName();
  private static final String b = a + ".SearchOverlay";
  private static final String c = a + ".SearchResults";
  private String d;
  private boolean e;
  private boolean f;
  private int g;
  private u h;
  private s i;
  private t j;
  private EditText k;
  private View l;
  private View m;
  private GHSLoadingViewFlipper n;
  private ListView o;
  private View p;
  private TextView q;
  private View r;
  private View s;
  
  public GHSRestaurantMenuSearchBar(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }
  
  public GHSRestaurantMenuSearchBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public GHSRestaurantMenuSearchBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
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
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    int i1;
    if (!isInEditMode())
    {
      if (paramAttributeSet == null) {
        break label452;
      }
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, n.com_grubhub_AppBaseLibrary_android_views_GHSRestaurantMenuSearchBar);
      i1 = paramContext.getResourceId(0, 0);
      paramContext.recycle();
    }
    for (;;)
    {
      paramContext = LayoutInflater.from(getContext());
      paramContext.inflate(2130903222, this, true);
      p = paramContext.inflate(2130903229, null, false);
      q = ((TextView)p.findViewById(2131690333));
      s = LayoutInflater.from(getContext()).inflate(2130903223, null, false);
      s.setTag(b);
      s.setVisibility(8);
      s.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          b();
        }
      });
      r = LayoutInflater.from(getContext()).inflate(2130903224, null, false);
      r.setTag(c);
      r.setVisibility(8);
      n = ((GHSLoadingViewFlipper)r.findViewById(2131690318));
      o = ((ListView)r.findViewById(2131690319));
      o.setOnItemClickListener(new AdapterView.OnItemClickListener()
      {
        public void onItemClick(final AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          GHSRestaurantMenuSearchBar.a(GHSRestaurantMenuSearchBar.this).clearFocus();
          paramAnonymousLong = 0L;
          if (GHSRestaurantMenuSearchBar.b(GHSRestaurantMenuSearchBar.this))
          {
            paramAnonymousLong = 350L;
            GHSRestaurantMenuSearchBar.c(GHSRestaurantMenuSearchBar.this);
          }
          paramAnonymousAdapterView = (String)paramAnonymousView.getTag();
          postDelayed(new Runnable()
          {
            public void run()
            {
              if (GHSRestaurantMenuSearchBar.d(GHSRestaurantMenuSearchBar.this) != null) {
                GHSRestaurantMenuSearchBar.d(GHSRestaurantMenuSearchBar.this).b(paramAnonymousAdapterView);
              }
            }
          }, paramAnonymousLong);
        }
      });
      j = new t(null);
      o.setAdapter(j);
      o.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
      {
        public void onGlobalLayout()
        {
          Object localObject = new Rect();
          GHSRestaurantMenuSearchBar.e(GHSRestaurantMenuSearchBar.this).getWindowVisibleDisplayFrame((Rect)localObject);
          int i = GHSRestaurantMenuSearchBar.e(GHSRestaurantMenuSearchBar.this).getRootView().getHeight();
          int j = bottom;
          int k = top;
          localObject = GHSRestaurantMenuSearchBar.this;
          if (i - (j - k) > 150) {}
          for (boolean bool = true;; bool = false)
          {
            GHSRestaurantMenuSearchBar.a((GHSRestaurantMenuSearchBar)localObject, bool);
            return;
          }
        }
      });
      h = new u(n);
      l = findViewById(2131690314);
      k = ((EditText)findViewById(2131690316));
      k.setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          if ((GHSRestaurantMenuSearchBar.f(GHSRestaurantMenuSearchBar.this) != true) && (GHSRestaurantMenuSearchBar.d(GHSRestaurantMenuSearchBar.this) != null)) {
            GHSRestaurantMenuSearchBar.d(GHSRestaurantMenuSearchBar.this).w();
          }
          GHSRestaurantMenuSearchBar.b(GHSRestaurantMenuSearchBar.this, true);
          GHSRestaurantMenuSearchBar.g(GHSRestaurantMenuSearchBar.this).setVisibility(8);
          if (GHSRestaurantMenuSearchBar.h(GHSRestaurantMenuSearchBar.this).getVisibility() != 0) {
            GHSRestaurantMenuSearchBar.a(GHSRestaurantMenuSearchBar.this, GHSRestaurantMenuSearchBar.i(GHSRestaurantMenuSearchBar.this), true);
          }
          while ((GHSRestaurantMenuSearchBar.j(GHSRestaurantMenuSearchBar.this) == null) || (GHSRestaurantMenuSearchBar.j(GHSRestaurantMenuSearchBar.this).getCount() != 0)) {
            return false;
          }
          GHSRestaurantMenuSearchBar.c(GHSRestaurantMenuSearchBar.this, false);
          return false;
        }
      });
      k.setOnEditorActionListener(new TextView.OnEditorActionListener()
      {
        public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
        {
          if (paramAnonymousInt == 6)
          {
            if ((GHSRestaurantMenuSearchBar.j(GHSRestaurantMenuSearchBar.this) == null) || (GHSRestaurantMenuSearchBar.j(GHSRestaurantMenuSearchBar.this).getCount() != 0)) {
              break label50;
            }
            postDelayed(new Runnable()
            {
              public void run()
              {
                GHSRestaurantMenuSearchBar.c(GHSRestaurantMenuSearchBar.this, true);
              }
            }, 350L);
          }
          for (;;)
          {
            return false;
            label50:
            if (GHSRestaurantMenuSearchBar.a(GHSRestaurantMenuSearchBar.this).getText().length() == 0) {
              b();
            }
          }
        }
      });
      k.addTextChangedListener(new TextWatcher()
      {
        public void afterTextChanged(Editable paramAnonymousEditable)
        {
          Object localObject = GHSRestaurantMenuSearchBar.this;
          if (paramAnonymousEditable.length() > 0) {}
          for (boolean bool = true;; bool = false)
          {
            GHSRestaurantMenuSearchBar.d((GHSRestaurantMenuSearchBar)localObject, bool);
            if (paramAnonymousEditable.length() > 0)
            {
              GHSRestaurantMenuSearchBar.k(GHSRestaurantMenuSearchBar.this).removeMessages(1);
              localObject = GHSRestaurantMenuSearchBar.k(GHSRestaurantMenuSearchBar.this).obtainMessage(1);
              obj = paramAnonymousEditable.toString();
              GHSRestaurantMenuSearchBar.k(GHSRestaurantMenuSearchBar.this).sendMessageDelayed((Message)localObject, 150L);
            }
            return;
          }
        }
        
        public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      });
      g = k.getPaddingRight();
      if (i1 > 0)
      {
        int i2 = k.getPaddingLeft();
        int i3 = k.getPaddingTop();
        int i4 = k.getPaddingRight();
        int i5 = k.getPaddingBottom();
        k.setBackgroundResource(i1);
        k.setPadding(i2, i3, i4, i5);
      }
      m = findViewById(2131690317);
      m.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          GHSRestaurantMenuSearchBar.a(GHSRestaurantMenuSearchBar.this).setText("");
        }
      });
      l.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (GHSRestaurantMenuSearchBar.d(GHSRestaurantMenuSearchBar.this) != null) {
            GHSRestaurantMenuSearchBar.d(GHSRestaurantMenuSearchBar.this).u();
          }
        }
      });
      return;
      label452:
      i1 = 0;
    }
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
    if (m != null)
    {
      localObject = m;
      if (!paramBoolean) {
        break label99;
      }
    }
    label99:
    for (int i1 = 0;; i1 = 8)
    {
      ((View)localObject).setVisibility(i1);
      if (k != null)
      {
        localObject = k;
        int i3 = k.getPaddingLeft();
        int i4 = k.getPaddingTop();
        int i5 = g;
        i1 = i2;
        if (paramBoolean) {
          i1 = m.getMeasuredWidth();
        }
        ((EditText)localObject).setPadding(i3, i4, i1 + i5, k.getPaddingBottom());
      }
      return;
    }
  }
  
  private void b(boolean paramBoolean)
  {
    TextView localTextView;
    if ((n != null) && (p != null) && (q != null))
    {
      if (!paramBoolean) {
        break label100;
      }
      localTextView = q;
      if (TextUtils.isEmpty(d)) {
        break label86;
      }
    }
    label86:
    for (String str = String.format(Locale.US, getContext().getString(2131231950), new Object[] { d });; str = getContext().getString(2131231949))
    {
      localTextView.setText(str);
      n.a(p, null);
      return;
    }
    label100:
    n.b();
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
    ((InputMethodManager)getContext().getSystemService("input_method")).hideSoftInputFromWindow(getWindowToken(), 2);
  }
  
  public void a(ArrayList<GHSIFoodMenuDataModel.GHSIMenuItem> paramArrayList, String paramString, GHSIFoodMenuDataModel paramGHSIFoodMenuDataModel)
  {
    d = paramString;
    j.a(paramArrayList, paramString, paramGHSIFoodMenuDataModel);
    n.b();
    a(s, false);
    a(r, true);
    f = true;
  }
  
  public boolean a()
  {
    return f;
  }
  
  public void b()
  {
    if (a())
    {
      k.setText("");
      l.setVisibility(0);
      a(s, false);
      a(r, false);
      f();
      k.clearFocus();
      f = false;
      if (i != null) {
        i.v();
      }
    }
  }
  
  public void c()
  {
    l.setVisibility(0);
  }
  
  public void d()
  {
    l.setVisibility(4);
  }
  
  public boolean dispatchKeyEventPreIme(KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getKeyCode() == 4) && (n != null))
    {
      if (n.getVisibility() == 0) {
        break label35;
      }
      b();
    }
    for (;;)
    {
      return super.dispatchKeyEventPreIme(paramKeyEvent);
      label35:
      if ((j != null) && (j.getCount() == 0)) {
        postDelayed(new Runnable()
        {
          public void run()
          {
            GHSRestaurantMenuSearchBar.c(GHSRestaurantMenuSearchBar.this, true);
          }
        }, 350L);
      }
    }
  }
  
  public String getSearchText()
  {
    return k.getText().toString();
  }
  
  public void setSearchBarListener(s params)
  {
    i = params;
    h.a(params);
  }
  
  public void setSearchResultsContainer(ViewGroup paramViewGroup)
  {
    if (paramViewGroup != null)
    {
      Integer localInteger = a(paramViewGroup);
      if (localInteger == null) {
        break label59;
      }
      if (paramViewGroup.findViewWithTag(c) == null) {
        paramViewGroup.addView(r, localInteger.intValue());
      }
      if (paramViewGroup.findViewWithTag(b) == null) {
        paramViewGroup.addView(s, localInteger.intValue());
      }
    }
    label59:
    do
    {
      return;
      if (paramViewGroup.findViewWithTag(b) == null) {
        paramViewGroup.addView(s);
      }
    } while (paramViewGroup.findViewWithTag(c) != null);
    paramViewGroup.addView(r);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSRestaurantMenuSearchBar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */