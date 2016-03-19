package android.support.v7.widget;

import android.annotation.TargetApi;
import android.app.SearchableInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.widget.f;
import android.support.v7.a.e;
import android.support.v7.b.c;
import android.support.v7.internal.widget.av;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import java.util.WeakHashMap;

public class SearchView
  extends m
  implements c
{
  static final y a;
  private static final boolean b;
  private boolean A;
  private int B;
  private boolean C;
  private CharSequence D;
  private boolean E;
  private int F;
  private SearchableInfo G;
  private Bundle H;
  private final av I;
  private Runnable J;
  private final Runnable K;
  private Runnable L;
  private final WeakHashMap<String, Drawable.ConstantState> M;
  private final SearchView.SearchAutoComplete c;
  private final View d;
  private final View e;
  private final ImageView f;
  private final ImageView g;
  private final ImageView h;
  private final ImageView i;
  private final ImageView j;
  private final int k;
  private final int l;
  private final int m;
  private final Intent n;
  private final Intent o;
  private aa p;
  private z q;
  private View.OnFocusChangeListener r;
  private ab s;
  private View.OnClickListener t;
  private boolean u;
  private boolean v;
  private f w;
  private boolean x;
  private CharSequence y;
  private boolean z;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 8) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      a = new y();
      return;
    }
  }
  
  private Intent a(String paramString1, Uri paramUri, String paramString2, String paramString3, int paramInt, String paramString4)
  {
    paramString1 = new Intent(paramString1);
    paramString1.addFlags(268435456);
    if (paramUri != null) {
      paramString1.setData(paramUri);
    }
    paramString1.putExtra("user_query", D);
    if (paramString3 != null) {
      paramString1.putExtra("query", paramString3);
    }
    if (paramString2 != null) {
      paramString1.putExtra("intent_extra_data_key", paramString2);
    }
    if (H != null) {
      paramString1.putExtra("app_data", H);
    }
    if (paramInt != 0)
    {
      paramString1.putExtra("action_key", paramInt);
      paramString1.putExtra("action_msg", paramString4);
    }
    if (b) {
      paramString1.setComponent(G.getSearchActivity());
    }
    return paramString1;
  }
  
  private void a(int paramInt, String paramString1, String paramString2)
  {
    paramString1 = a("android.intent.action.SEARCH", null, null, paramString2, paramInt, paramString1);
    getContext().startActivity(paramString1);
  }
  
  private void a(boolean paramBoolean)
  {
    boolean bool2 = true;
    int i2 = 8;
    v = paramBoolean;
    int i1;
    boolean bool1;
    if (paramBoolean)
    {
      i1 = 0;
      if (TextUtils.isEmpty(c.getText())) {
        break label115;
      }
      bool1 = true;
      label33:
      f.setVisibility(i1);
      b(bool1);
      Object localObject = d;
      if (!paramBoolean) {
        break label121;
      }
      i1 = 8;
      label60:
      ((View)localObject).setVisibility(i1);
      localObject = j;
      if (!u) {
        break label126;
      }
      i1 = i2;
      label81:
      ((ImageView)localObject).setVisibility(i1);
      h();
      if (bool1) {
        break label131;
      }
    }
    label115:
    label121:
    label126:
    label131:
    for (paramBoolean = bool2;; paramBoolean = false)
    {
      c(paramBoolean);
      g();
      return;
      i1 = 8;
      break;
      bool1 = false;
      break label33;
      i1 = 0;
      break label60;
      i1 = 0;
      break label81;
    }
  }
  
  static boolean a(Context paramContext)
  {
    return getResourcesgetConfigurationorientation == 2;
  }
  
  private CharSequence b(CharSequence paramCharSequence)
  {
    if (!u) {
      return paramCharSequence;
    }
    Drawable localDrawable = I.a(k);
    int i1 = (int)(c.getTextSize() * 1.25D);
    localDrawable.setBounds(0, 0, i1, i1);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("   ");
    localSpannableStringBuilder.append(paramCharSequence);
    localSpannableStringBuilder.setSpan(new ImageSpan(localDrawable), 1, 2, 33);
    return localSpannableStringBuilder;
  }
  
  private void b(boolean paramBoolean)
  {
    int i2 = 8;
    int i1 = i2;
    if (x)
    {
      i1 = i2;
      if (f())
      {
        i1 = i2;
        if (hasFocus()) {
          if (!paramBoolean)
          {
            i1 = i2;
            if (C) {}
          }
          else
          {
            i1 = 0;
          }
        }
      }
    }
    g.setVisibility(i1);
  }
  
  private void c(boolean paramBoolean)
  {
    int i1;
    if ((C) && (!c()) && (paramBoolean))
    {
      i1 = 0;
      g.setVisibility(8);
    }
    for (;;)
    {
      i.setVisibility(i1);
      return;
      i1 = 8;
    }
  }
  
  @TargetApi(8)
  private boolean e()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    Intent localIntent;
    if (G != null)
    {
      bool1 = bool2;
      if (G.getVoiceSearchEnabled())
      {
        localIntent = null;
        if (!G.getVoiceSearchLaunchWebSearch()) {
          break label69;
        }
        localIntent = n;
      }
    }
    for (;;)
    {
      bool1 = bool2;
      if (localIntent != null)
      {
        bool1 = bool2;
        if (getContext().getPackageManager().resolveActivity(localIntent, 65536) != null) {
          bool1 = true;
        }
      }
      return bool1;
      label69:
      if (G.getVoiceSearchLaunchRecognizer()) {
        localIntent = o;
      }
    }
  }
  
  private boolean f()
  {
    return ((x) || (C)) && (!c());
  }
  
  private void g()
  {
    int i2 = 8;
    int i1 = i2;
    if (f()) {
      if (g.getVisibility() != 0)
      {
        i1 = i2;
        if (i.getVisibility() != 0) {}
      }
      else
      {
        i1 = 0;
      }
    }
    e.setVisibility(i1);
  }
  
  private int getPreferredWidth()
  {
    return getContext().getResources().getDimensionPixelSize(e.abc_search_view_preferred_width);
  }
  
  private void h()
  {
    int i4 = 1;
    int i3 = 0;
    int i1;
    int i2;
    label44:
    label56:
    Drawable localDrawable;
    if (!TextUtils.isEmpty(c.getText()))
    {
      i1 = 1;
      i2 = i4;
      if (i1 == 0)
      {
        if ((!u) || (E)) {
          break label94;
        }
        i2 = i4;
      }
      localObject = h;
      if (i2 == 0) {
        break label99;
      }
      i2 = i3;
      ((ImageView)localObject).setVisibility(i2);
      localDrawable = h.getDrawable();
      if (i1 == 0) {
        break label105;
      }
    }
    label94:
    label99:
    label105:
    for (Object localObject = ENABLED_STATE_SET;; localObject = EMPTY_STATE_SET)
    {
      localDrawable.setState((int[])localObject);
      return;
      i1 = 0;
      break;
      i2 = 0;
      break label44;
      i2 = 8;
      break label56;
    }
  }
  
  private void i()
  {
    post(K);
  }
  
  private void k()
  {
    if (y != null) {
      c.setHint(b(y));
    }
    String str;
    do
    {
      return;
      if ((!b) || (G == null)) {
        break;
      }
      str = null;
      int i1 = G.getHintId();
      if (i1 != 0) {
        str = getContext().getString(i1);
      }
    } while (str == null);
    c.setHint(b(str));
    return;
    c.setHint(b(""));
  }
  
  @TargetApi(8)
  private void l()
  {
    int i2 = 1;
    c.setThreshold(G.getSuggestThreshold());
    c.setImeOptions(G.getImeOptions());
    int i3 = G.getInputType();
    int i1 = i3;
    if ((i3 & 0xF) == 1)
    {
      i3 &= 0xFFFEFFFF;
      i1 = i3;
      if (G.getSuggestAuthority() != null) {
        i1 = i3 | 0x10000 | 0x80000;
      }
    }
    c.setInputType(i1);
    if (w != null) {
      w.a(null);
    }
    if (G.getSuggestAuthority() != null)
    {
      w = new ac(getContext(), this, G, M);
      c.setAdapter(w);
      ac localac = (ac)w;
      i1 = i2;
      if (z) {
        i1 = 2;
      }
      localac.a(i1);
    }
  }
  
  private void m()
  {
    Editable localEditable = c.getText();
    if ((localEditable != null) && (TextUtils.getTrimmedLength(localEditable) > 0) && ((p == null) || (!p.a(localEditable.toString()))))
    {
      if (G != null) {
        a(0, null, localEditable.toString());
      }
      setImeVisibility(false);
      n();
    }
  }
  
  private void n()
  {
    c.dismissDropDown();
  }
  
  private void o()
  {
    if (TextUtils.isEmpty(c.getText()))
    {
      if ((u) && ((q == null) || (!q.a())))
      {
        clearFocus();
        a(true);
      }
      return;
    }
    c.setText("");
    c.requestFocus();
    setImeVisibility(true);
  }
  
  private void p()
  {
    a(false);
    c.requestFocus();
    setImeVisibility(true);
    if (t != null) {
      t.onClick(this);
    }
  }
  
  private void q()
  {
    a.a(c);
    a.b(c);
  }
  
  private void setImeVisibility(boolean paramBoolean)
  {
    if (paramBoolean) {
      post(J);
    }
    InputMethodManager localInputMethodManager;
    do
    {
      return;
      removeCallbacks(J);
      localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
    } while (localInputMethodManager == null);
    localInputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
  }
  
  private void setQuery(CharSequence paramCharSequence)
  {
    c.setText(paramCharSequence);
    SearchView.SearchAutoComplete localSearchAutoComplete = c;
    if (TextUtils.isEmpty(paramCharSequence)) {}
    for (int i1 = 0;; i1 = paramCharSequence.length())
    {
      localSearchAutoComplete.setSelection(i1);
      return;
    }
  }
  
  public void a()
  {
    if (E) {
      return;
    }
    E = true;
    F = c.getImeOptions();
    c.setImeOptions(F | 0x2000000);
    c.setText("");
    setIconified(false);
  }
  
  void a(CharSequence paramCharSequence)
  {
    setQuery(paramCharSequence);
  }
  
  public void a(CharSequence paramCharSequence, boolean paramBoolean)
  {
    c.setText(paramCharSequence);
    if (paramCharSequence != null)
    {
      c.setSelection(c.length());
      D = paramCharSequence;
    }
    if ((paramBoolean) && (!TextUtils.isEmpty(paramCharSequence))) {
      m();
    }
  }
  
  public void b()
  {
    a("", false);
    clearFocus();
    a(true);
    c.setImeOptions(F);
    E = false;
  }
  
  public boolean c()
  {
    return v;
  }
  
  public void clearFocus()
  {
    A = true;
    setImeVisibility(false);
    super.clearFocus();
    c.clearFocus();
    A = false;
  }
  
  void d()
  {
    a(c());
    i();
    if (c.hasFocus()) {
      q();
    }
  }
  
  public int getImeOptions()
  {
    return c.getImeOptions();
  }
  
  public int getInputType()
  {
    return c.getInputType();
  }
  
  public int getMaxWidth()
  {
    return B;
  }
  
  public CharSequence getQuery()
  {
    return c.getText();
  }
  
  public CharSequence getQueryHint()
  {
    Object localObject2 = null;
    Object localObject1;
    if (y != null) {
      localObject1 = y;
    }
    int i1;
    do
    {
      do
      {
        do
        {
          return (CharSequence)localObject1;
          localObject1 = localObject2;
        } while (!b);
        localObject1 = localObject2;
      } while (G == null);
      i1 = G.getHintId();
      localObject1 = localObject2;
    } while (i1 == 0);
    return getContext().getString(i1);
  }
  
  int getSuggestionCommitIconResId()
  {
    return m;
  }
  
  int getSuggestionRowLayout()
  {
    return l;
  }
  
  public f getSuggestionsAdapter()
  {
    return w;
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(K);
    post(L);
    super.onDetachedFromWindow();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (c())
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    int i2 = View.MeasureSpec.getMode(paramInt1);
    int i1 = View.MeasureSpec.getSize(paramInt1);
    switch (i2)
    {
    default: 
      paramInt1 = i1;
    }
    for (;;)
    {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), paramInt2);
      return;
      if (B > 0)
      {
        paramInt1 = Math.min(B, i1);
      }
      else
      {
        paramInt1 = Math.min(getPreferredWidth(), i1);
        continue;
        paramInt1 = i1;
        if (B > 0)
        {
          paramInt1 = Math.min(B, i1);
          continue;
          if (B > 0) {
            paramInt1 = B;
          } else {
            paramInt1 = getPreferredWidth();
          }
        }
      }
    }
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    i();
  }
  
  public boolean requestFocus(int paramInt, Rect paramRect)
  {
    if (A) {}
    while (!isFocusable()) {
      return false;
    }
    if (!c())
    {
      boolean bool = c.requestFocus(paramInt, paramRect);
      if (bool) {
        a(false);
      }
      return bool;
    }
    return super.requestFocus(paramInt, paramRect);
  }
  
  public void setAppSearchData(Bundle paramBundle)
  {
    H = paramBundle;
  }
  
  public void setIconified(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      o();
      return;
    }
    p();
  }
  
  public void setIconifiedByDefault(boolean paramBoolean)
  {
    if (u == paramBoolean) {
      return;
    }
    u = paramBoolean;
    a(paramBoolean);
    k();
  }
  
  public void setImeOptions(int paramInt)
  {
    c.setImeOptions(paramInt);
  }
  
  public void setInputType(int paramInt)
  {
    c.setInputType(paramInt);
  }
  
  public void setMaxWidth(int paramInt)
  {
    B = paramInt;
    requestLayout();
  }
  
  public void setOnCloseListener(z paramz)
  {
    q = paramz;
  }
  
  public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener paramOnFocusChangeListener)
  {
    r = paramOnFocusChangeListener;
  }
  
  public void setOnQueryTextListener(aa paramaa)
  {
    p = paramaa;
  }
  
  public void setOnSearchClickListener(View.OnClickListener paramOnClickListener)
  {
    t = paramOnClickListener;
  }
  
  public void setOnSuggestionListener(ab paramab)
  {
    s = paramab;
  }
  
  public void setQueryHint(CharSequence paramCharSequence)
  {
    y = paramCharSequence;
    k();
  }
  
  public void setQueryRefinementEnabled(boolean paramBoolean)
  {
    z = paramBoolean;
    ac localac;
    if ((w instanceof ac))
    {
      localac = (ac)w;
      if (!paramBoolean) {
        break label35;
      }
    }
    label35:
    for (int i1 = 2;; i1 = 1)
    {
      localac.a(i1);
      return;
    }
  }
  
  public void setSearchableInfo(SearchableInfo paramSearchableInfo)
  {
    G = paramSearchableInfo;
    if (G != null)
    {
      if (b) {
        l();
      }
      k();
    }
    if ((b) && (e())) {}
    for (boolean bool = true;; bool = false)
    {
      C = bool;
      if (C) {
        c.setPrivateImeOptions("nm");
      }
      a(c());
      return;
    }
  }
  
  public void setSubmitButtonEnabled(boolean paramBoolean)
  {
    x = paramBoolean;
    a(c());
  }
  
  public void setSuggestionsAdapter(f paramf)
  {
    w = paramf;
    c.setAdapter(w);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.SearchView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */