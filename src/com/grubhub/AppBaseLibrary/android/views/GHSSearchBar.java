package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.view.r;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSIAutoCompleteDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSearchAutoValueDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.s;
import com.grubhub.AppBaseLibrary.android.n;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;

public class GHSSearchBar
  extends RelativeLayout
{
  private static final String c = GHSSearchBar.class.getSimpleName();
  private static final String d = c + ".SearchResults";
  protected TextView.OnEditorActionListener a = new TextView.OnEditorActionListener()
  {
    public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
      if (paramAnonymousInt == 3)
      {
        if (GHSSearchBar.g(GHSSearchBar.this).getVisibility() != 0) {
          paramAnonymousTextView = "autocomplete-default tab search button_cta";
        }
        for (;;)
        {
          GHSSearchBar.d(GHSSearchBar.this).a(paramAnonymousTextView, GHSSearchBar.j(GHSSearchBar.this));
          GHSSearchBar.k(GHSSearchBar.this);
          return true;
          if (GHSSearchBar.i(GHSSearchBar.this).isSelected()) {
            paramAnonymousTextView = "autocomplete-food tab search button_cta";
          } else {
            paramAnonymousTextView = "autocomplete-restaurant tab search button_cta";
          }
        }
      }
      return false;
    }
  };
  protected AdapterView.OnItemClickListener b = new AdapterView.OnItemClickListener()
  {
    public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      paramAnonymousAdapterView = (z)GHSSearchBar.h(GHSSearchBar.this).getAdapter();
      if (paramAnonymousAdapterView.getItemViewType(paramAnonymousInt) == 2)
      {
        GHSApplication.a().b().f(null);
        f();
        return;
      }
      GHSSearchBar.l(GHSSearchBar.this);
      paramAnonymousView = paramAnonymousAdapterView.b(paramAnonymousInt);
      if (z.a(paramAnonymousAdapterView)) {
        GHSSearchBar.d(GHSSearchBar.this).a("autocomplete-default suggestions_cta", paramAnonymousView.getValue());
      }
      for (paramAnonymousInt = 1;; paramAnonymousInt = 0)
      {
        if (f.a(paramAnonymousView.getId()))
        {
          GHSSearchBar.a(GHSSearchBar.this, GHSSearchBar.c(GHSSearchBar.this), false);
          if (paramAnonymousInt == 0) {
            GHSSearchBar.d(GHSSearchBar.this).a("autocomplete-food suggestions_cta", paramAnonymousView.getValue());
          }
          GHSSearchBar.b(GHSSearchBar.this).setText(paramAnonymousView.getValue());
          GHSSearchBar.k(GHSSearchBar.this);
          return;
        }
        if (paramAnonymousInt == 0) {
          GHSSearchBar.d(GHSSearchBar.this).a("autocomplete-restaurant suggestions_cta", paramAnonymousView.getValue());
        }
        GHSSearchBar.d(GHSSearchBar.this).b(paramAnonymousView.getId());
        GHSSearchBar.a(GHSSearchBar.this, paramAnonymousView);
        return;
      }
    }
  };
  private Button[] e;
  private GHSEditText f;
  private View g;
  private GHSLoadingViewFlipper h;
  private ListView i;
  private View j;
  private String k;
  private y l;
  private View m;
  private View n;
  private Button o;
  private Button p;
  private int q;
  private int r;
  private long s;
  private ArrayList<GHSSearchAutoValueDataModel> t;
  private ArrayList<GHSSearchAutoValueDataModel> u;
  private GHSIRestaurantAvailabilityDataModel v;
  private TextWatcher w = new TextWatcher()
  {
    public void afterTextChanged(Editable paramAnonymousEditable)
    {
      Object localObject = GHSSearchBar.this;
      boolean bool;
      int j;
      if (paramAnonymousEditable.length() > 0)
      {
        bool = true;
        GHSSearchBar.a((GHSSearchBar)localObject, bool);
        j = GHSSearchBar.g(GHSSearchBar.this).getVisibility();
        localObject = GHSSearchBar.g(GHSSearchBar.this);
        if (!f.b(paramAnonymousEditable.toString())) {
          break label131;
        }
      }
      label131:
      for (int i = 0;; i = 8)
      {
        ((View)localObject).setVisibility(i);
        if (j != GHSSearchBar.g(GHSSearchBar.this).getVisibility())
        {
          c();
          if (j != 0) {
            ((z)GHSSearchBar.h(GHSSearchBar.this).getAdapter()).a(new ArrayList(), false);
          }
        }
        GHSSearchBar.a(GHSSearchBar.this, paramAnonymousEditable.toString(), false);
        return;
        bool = false;
        break;
      }
    }
    
    public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
  };
  private View.OnClickListener x = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      GHSSearchBar.a(GHSSearchBar.this, paramAnonymousView.getId());
      c();
    }
  };
  
  public GHSSearchBar(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }
  
  public GHSSearchBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public GHSSearchBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  private SpannableString a(Context paramContext, String paramString1, String paramString2)
  {
    SpannableString localSpannableString = null;
    if (!TextUtils.isEmpty(paramString1))
    {
      localSpannableString = new SpannableString(paramString1);
      if (!TextUtils.isEmpty(paramString2))
      {
        paramString1 = paramString1.toLowerCase(Locale.US);
        paramString2 = paramString2.toLowerCase(Locale.US).split("\\s+");
        int i3 = paramString2.length;
        int i1 = 0;
        while (i1 < i3)
        {
          String str = paramString2[i1];
          if (f.a(str))
          {
            i1 += 1;
          }
          else
          {
            int i2 = 0;
            for (;;)
            {
              int i4 = paramString1.indexOf(str, i2);
              if (i4 == -1) {
                break;
              }
              i2 = str.length() + i4;
              localSpannableString.setSpan(new ForegroundColorSpan(paramContext.getResources().getColor(2131558463)), i4, i2, 33);
            }
          }
        }
      }
    }
    return localSpannableString;
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    int i1;
    if (!isInEditMode())
    {
      if (paramAttributeSet == null) {
        break label439;
      }
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, n.com_grubhub_AppBaseLibrary_android_views_GHSSearchBar);
      i1 = paramContext.getResourceId(0, 0);
      paramContext.recycle();
    }
    for (;;)
    {
      t = GHSApplication.a().b().ac();
      if (t == null) {
        t = new ArrayList();
      }
      LayoutInflater.from(getContext()).inflate(2130903226, this, true);
      f = ((GHSEditText)findViewById(2131690328));
      f.setOnEditorActionListener(a);
      paramContext = new z(this, getContext());
      f.addTextChangedListener(w);
      f.setOnFocusChangeListener(new View.OnFocusChangeListener()
      {
        public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
        {
          if (!paramAnonymousBoolean)
          {
            GHSSearchBar.b(GHSSearchBar.this).setText(GHSSearchBar.a(GHSSearchBar.this));
            paramAnonymousView = GHSSearchBar.this;
            if (GHSSearchBar.b(GHSSearchBar.this).getText().length() <= 0) {
              break label82;
            }
          }
          label82:
          for (paramAnonymousBoolean = true;; paramAnonymousBoolean = false)
          {
            GHSSearchBar.a(paramAnonymousView, paramAnonymousBoolean);
            return;
            ((InputMethodManager)getContext().getSystemService("input_method")).showSoftInput(GHSSearchBar.b(GHSSearchBar.this), 1);
            break;
          }
        }
      });
      f.setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          if (!a())
          {
            GHSSearchBar.a(GHSSearchBar.this, GHSSearchBar.c(GHSSearchBar.this), true);
            if (GHSSearchBar.d(GHSSearchBar.this) != null)
            {
              GHSSearchBar.d(GHSSearchBar.this).k();
              GHSSearchBar.e(GHSSearchBar.this);
            }
            GHSSearchBar.f(GHSSearchBar.this).setVisibility(8);
          }
          return false;
        }
      });
      f.setKeyEventCallback(this);
      q = f.getPaddingRight();
      if (i1 > 0) {
        f.setBackgroundResource(i1);
      }
      m = findViewById(2131690329);
      m.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (!a())
          {
            if (GHSSearchBar.d(GHSSearchBar.this) != null)
            {
              GHSSearchBar.d(GHSSearchBar.this).k();
              GHSSearchBar.e(GHSSearchBar.this);
            }
            GHSSearchBar.f(GHSSearchBar.this).setVisibility(8);
            GHSSearchBar.a(GHSSearchBar.this, GHSSearchBar.c(GHSSearchBar.this), true);
            GHSSearchBar.b(GHSSearchBar.this).requestFocus();
          }
          GHSSearchBar.b(GHSSearchBar.this).setText("");
        }
      });
      g = findViewById(2131690326);
      g.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (GHSSearchBar.d(GHSSearchBar.this) != null) {
            GHSSearchBar.d(GHSSearchBar.this).i();
          }
        }
      });
      e();
      j = LayoutInflater.from(getContext()).inflate(2130903109, null, false);
      j.setTag(d);
      j.setVisibility(8);
      n = j.findViewById(2131689736);
      o = ((Button)j.findViewById(2131689737));
      p = ((Button)j.findViewById(2131689739));
      o.setOnClickListener(x);
      p.setOnClickListener(x);
      e = new Button[] { o, p };
      setSelectedSearchTypeButton(o.getId());
      h = ((GHSLoadingViewFlipper)j.findViewById(2131689740));
      i = ((ListView)j.findViewById(2131689741));
      i.setOnItemClickListener(b);
      i.setAdapter(paramContext);
      return;
      label439:
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
  
  private void a(GHSSearchAutoValueDataModel paramGHSSearchAutoValueDataModel)
  {
    if ((paramGHSSearchAutoValueDataModel != null) && (paramGHSSearchAutoValueDataModel.getValue() != null))
    {
      int i1 = t.size() - 1;
      if (i1 >= 0)
      {
        GHSSearchAutoValueDataModel localGHSSearchAutoValueDataModel = (GHSSearchAutoValueDataModel)t.get(i1);
        String str1 = localGHSSearchAutoValueDataModel.getId();
        String str2 = paramGHSSearchAutoValueDataModel.getId();
        if (localGHSSearchAutoValueDataModel.getValue().toLowerCase().equals(paramGHSSearchAutoValueDataModel.getValue().toLowerCase()))
        {
          if (str1 != null) {
            break label95;
          }
          if (str2 != null) {}
        }
        for (;;)
        {
          t.remove(i1);
          label95:
          do
          {
            i1 -= 1;
            break;
          } while (!str1.equals(str2));
        }
      }
      t.add(0, paramGHSSearchAutoValueDataModel);
      if (t.size() > 10) {
        t.remove(t.size() - 1);
      }
      GHSApplication.a().b().f(t);
    }
  }
  
  private void a(String paramString)
  {
    if (f.b(paramString))
    {
      GHSSearchAutoValueDataModel localGHSSearchAutoValueDataModel = new GHSSearchAutoValueDataModel();
      localGHSSearchAutoValueDataModel.setValue(paramString);
      a(localGHSSearchAutoValueDataModel);
    }
  }
  
  private void a(String paramString, boolean paramBoolean)
  {
    Object localObject1 = GHSApplication.a().b().z();
    if ((f.b(paramString)) && (localObject1 != null))
    {
      paramString = paramString.toLowerCase(Locale.US);
      Object localObject2 = ((GHSFilterSortCriteria)localObject1).getAddress();
      localObject1 = Double.valueOf(((GHSIAddressDataModel)localObject2).getLatitude());
      localObject2 = Double.valueOf(((GHSIAddressDataModel)localObject2).getLongitude());
      String[] arrayOfString = new String[1];
      if (p.isSelected()) {
        arrayOfString[0] = s.m;
      }
      for (;;)
      {
        l.a(paramString, arrayOfString, (Double)localObject1, (Double)localObject2, paramBoolean);
        return;
        arrayOfString[0] = s.l;
      }
    }
    l.p();
    ((z)i.getAdapter()).a(i(), true);
  }
  
  private void b(boolean paramBoolean)
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
      if (f != null)
      {
        localObject = f;
        int i3 = f.getPaddingLeft();
        int i4 = f.getPaddingTop();
        int i5 = q;
        i1 = i2;
        if (paramBoolean) {
          i1 = m.getMeasuredWidth();
        }
        ((GHSEditText)localObject).setPadding(i3, i4, i1 + i5, f.getPaddingBottom());
      }
      return;
    }
  }
  
  private void g()
  {
    long l1 = new Date().getTime();
    if (l1 - s >= 1800000L)
    {
      s = l1;
      Object localObject = GHSApplication.a().b().z();
      if (localObject != null)
      {
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator;
        String str;
        if (t != null)
        {
          localIterator = t.iterator();
          while (localIterator.hasNext())
          {
            str = ((GHSSearchAutoValueDataModel)localIterator.next()).getId();
            if (str != null) {
              localArrayList.add(str);
            }
          }
        }
        if (u != null)
        {
          localIterator = u.iterator();
          while (localIterator.hasNext())
          {
            str = ((GHSSearchAutoValueDataModel)localIterator.next()).getId();
            if ((str != null) && (!localArrayList.contains(str))) {
              localArrayList.add(str);
            }
          }
        }
        localObject = ((GHSFilterSortCriteria)localObject).getAddress();
        if (localArrayList.size() > 0) {
          l.a(localArrayList, ((GHSIAddressDataModel)localObject).getLatitude(), ((GHSIAddressDataModel)localObject).getLongitude());
        }
      }
    }
  }
  
  private String getSearchBarText()
  {
    return f.getText().toString();
  }
  
  private void h()
  {
    k = getSearchBarText();
    a(k);
    j();
    f.clearFocus();
    a(j, false);
    if (l != null)
    {
      l.a(k);
      l.o();
    }
  }
  
  private ArrayList<GHSSearchAutoValueDataModel> i()
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject1;
    Object localObject2;
    Object localObject3;
    if (t != null)
    {
      if (v != null)
      {
        localObject1 = t.iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (GHSSearchAutoValueDataModel)((Iterator)localObject1).next();
          localObject3 = ((GHSSearchAutoValueDataModel)localObject2).getId();
          if (localObject3 != null)
          {
            localObject3 = v.getSummary((String)localObject3);
            if ((localObject3 == null) || (((GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary)localObject3).isOpen())) {
              localArrayList.add(localObject2);
            }
          }
          else
          {
            localArrayList.add(localObject2);
          }
        }
      }
      localArrayList.addAll(t);
    }
    int i1;
    if (u != null)
    {
      i1 = 0;
      if ((localArrayList.size() < 10) && (i1 < u.size()))
      {
        localObject1 = (GHSSearchAutoValueDataModel)u.get(i1);
        localObject2 = ((GHSSearchAutoValueDataModel)localObject1).getValue();
        localObject3 = ((GHSSearchAutoValueDataModel)localObject1).getId();
        Iterator localIterator = localArrayList.iterator();
        Object localObject4;
        String str;
        do
        {
          if (!localIterator.hasNext()) {
            break;
          }
          localObject4 = (GHSSearchAutoValueDataModel)localIterator.next();
          str = ((GHSSearchAutoValueDataModel)localObject4).getValue();
          localObject4 = ((GHSSearchAutoValueDataModel)localObject4).getId();
        } while ((str == null) || (!str.equals(localObject2)) || (localObject4 == null) || (!((String)localObject4).equals(localObject3)));
      }
    }
    for (int i2 = 1;; i2 = 0)
    {
      if (i2 == 0)
      {
        if ((v == null) || (localObject3 == null)) {
          break label310;
        }
        localObject2 = v.getSummary((String)localObject3);
        if ((localObject2 == null) || (((GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary)localObject2).isOpen())) {
          localArrayList.add(localObject1);
        }
      }
      for (;;)
      {
        i1 += 1;
        break;
        label310:
        localArrayList.add(localObject1);
      }
      return localArrayList;
    }
  }
  
  private void j()
  {
    ((InputMethodManager)getContext().getSystemService("input_method")).hideSoftInputFromWindow(getWindowToken(), 2);
  }
  
  private void setSelectedSearchTypeButton(int paramInt)
  {
    if (e != null)
    {
      Button[] arrayOfButton = e;
      int i2 = arrayOfButton.length;
      int i1 = 0;
      if (i1 < i2)
      {
        Button localButton = arrayOfButton[i1];
        if (localButton.getId() == paramInt)
        {
          r = paramInt;
          localButton.setSelected(true);
        }
        for (;;)
        {
          i1 += 1;
          break;
          localButton.setSelected(false);
        }
      }
      if (f.getText().length() > 0) {
        a(getSearchBarText(), true);
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {
      h.a("", null);
    }
  }
  
  public boolean a()
  {
    return (j != null) && (j.getVisibility() == 0);
  }
  
  public void b()
  {
    String str;
    if (a())
    {
      if (n.getVisibility() == 0) {
        break label86;
      }
      str = "autocomplete-default tab dismiss_cta";
    }
    for (;;)
    {
      l.a(str, getSearchBarText());
      a(j, false);
      f.setText("");
      d();
      j();
      f.clearFocus();
      if (l != null) {
        l.o();
      }
      return;
      label86:
      if (o.isSelected()) {
        str = "autocomplete-food tab dismiss_cta";
      } else {
        str = "autocomplete-restaurant tab dismiss_cta";
      }
    }
  }
  
  public void c()
  {
    if (a())
    {
      if (f.getText().length() <= 0) {
        break label62;
      }
      if (!o.isSelected()) {
        break label42;
      }
      l.m();
    }
    label42:
    while (!p.isSelected()) {
      return;
    }
    l.n();
    return;
    label62:
    l.l();
  }
  
  public void d()
  {
    if (j.getVisibility() != 0) {
      findViewById(2131690326).setVisibility(0);
    }
  }
  
  public void e()
  {
    findViewById(2131690326).setVisibility(4);
  }
  
  public void f()
  {
    t = new ArrayList();
    if (i != null) {
      ((z)i.getAdapter()).a(i(), true);
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 84)
    {
      r.b(paramKeyEvent);
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 84)
    {
      if (n.getVisibility() != 0) {
        paramKeyEvent = "autocomplete-default tab search button_cta";
      }
      for (;;)
      {
        l.a(paramKeyEvent, getSearchBarText());
        h();
        return true;
        if (o.isSelected()) {
          paramKeyEvent = "autocomplete-food tab search button_cta";
        } else {
          paramKeyEvent = "autocomplete-restaurant tab search button_cta";
        }
      }
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    Parcelable localParcelable = paramParcelable;
    if ((paramParcelable instanceof Bundle))
    {
      paramParcelable = (Bundle)paramParcelable;
      if ((paramParcelable.getBoolean("is_search_open_key")) && (j != null))
      {
        j.setVisibility(0);
        if (l != null) {
          l.k();
        }
        g.setVisibility(8);
        f.requestFocus();
      }
      int i1 = paramParcelable.getInt("selected_search_type_id_key");
      if (i1 != 0) {
        setSelectedSearchTypeButton(i1);
      }
      localParcelable = paramParcelable.getParcelable("parent_state_key");
    }
    super.onRestoreInstanceState(localParcelable);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("parent_state_key", super.onSaveInstanceState());
    localBundle.putBoolean("is_search_open_key", a());
    localBundle.putInt("selected_search_type_id_key", r);
    return localBundle;
  }
  
  public void setAutoCompleteResults(GHSIAutoCompleteDataModel paramGHSIAutoCompleteDataModel)
  {
    if (paramGHSIAutoCompleteDataModel != null) {
      ((z)i.getAdapter()).a(paramGHSIAutoCompleteDataModel.getAutoCompleteResults(), false);
    }
  }
  
  public void setPastOrders(GHSIPastOrderListDataModel paramGHSIPastOrderListDataModel)
  {
    u = new ArrayList();
    if ((paramGHSIPastOrderListDataModel != null) && (paramGHSIPastOrderListDataModel.getPastOrders() != null)) {
      paramGHSIPastOrderListDataModel = paramGHSIPastOrderListDataModel.getPastOrders().iterator();
    }
    label200:
    for (;;)
    {
      Object localObject1;
      String str;
      Object localObject2;
      if (paramGHSIPastOrderListDataModel.hasNext())
      {
        localObject1 = (GHSIPastOrderDataModel)paramGHSIPastOrderListDataModel.next();
        str = ((GHSIPastOrderDataModel)localObject1).getRestaurantName();
        localObject1 = ((GHSIPastOrderDataModel)localObject1).getRestaurantId();
        localObject2 = u.iterator();
        GHSSearchAutoValueDataModel localGHSSearchAutoValueDataModel;
        do
        {
          if (!((Iterator)localObject2).hasNext()) {
            break;
          }
          localGHSSearchAutoValueDataModel = (GHSSearchAutoValueDataModel)((Iterator)localObject2).next();
        } while ((!localGHSSearchAutoValueDataModel.getValue().equals(str)) || (!localGHSSearchAutoValueDataModel.getId().equals(localObject1)));
      }
      for (int i1 = 1;; i1 = 0)
      {
        if (i1 != 0) {
          break label200;
        }
        localObject2 = new GHSSearchAutoValueDataModel();
        ((GHSSearchAutoValueDataModel)localObject2).setValue(str);
        ((GHSSearchAutoValueDataModel)localObject2).setId((String)localObject1);
        u.add(localObject2);
        break;
        if (f.a(getSearchBarText())) {
          ((z)i.getAdapter()).a(i(), true);
        }
        return;
      }
    }
  }
  
  public void setRestaurantAvailability(GHSIRestaurantAvailabilityDataModel paramGHSIRestaurantAvailabilityDataModel)
  {
    v = paramGHSIRestaurantAvailabilityDataModel;
    if (f.a(getSearchBarText())) {
      ((z)i.getAdapter()).a(i(), true);
    }
  }
  
  public void setSearchBarListener(y paramy)
  {
    l = paramy;
  }
  
  public void setSearchResultsContainer(ViewGroup paramViewGroup)
  {
    if ((paramViewGroup != null) && (paramViewGroup.findViewWithTag(d) == null)) {
      paramViewGroup.addView(j);
    }
  }
  
  public void setSearchText(String paramString)
  {
    k = paramString;
    f.setText(paramString);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSSearchBar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */