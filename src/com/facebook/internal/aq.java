package com.facebook.internal;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.aj;
import com.facebook.am;
import com.facebook.h;
import com.facebook.i;
import com.facebook.m;
import java.util.Locale;

public class aq
  extends Dialog
{
  private String a;
  private String b = "fbconnect://success";
  private at c;
  private WebView d;
  private ProgressDialog e;
  private ImageView f;
  private FrameLayout g;
  private boolean h = false;
  private boolean i = false;
  private boolean j = false;
  
  public aq(Context paramContext, String paramString)
  {
    this(paramContext, paramString, 16973840);
  }
  
  public aq(Context paramContext, String paramString, int paramInt)
  {
    super(paramContext, k);
    a = paramString;
  }
  
  public aq(Context paramContext, String paramString, Bundle paramBundle, int paramInt, at paramat)
  {
    super(paramContext, k);
    paramContext = paramBundle;
    if (paramBundle == null) {
      paramContext = new Bundle();
    }
    paramContext.putString("redirect_uri", "fbconnect://success");
    paramContext.putString("display", "touch");
    paramContext.putString("sdk", String.format(Locale.ROOT, "android-%s", new Object[] { m.g() }));
    a = al.a(ak.a(), ak.d() + "/" + "dialog/" + paramString, paramContext).toString();
    c = paramat;
  }
  
  private int a(int paramInt1, float paramFloat, int paramInt2, int paramInt3)
  {
    double d1 = 0.5D;
    int k = (int)(paramInt1 / paramFloat);
    if (k <= paramInt2) {
      d1 = 1.0D;
    }
    for (;;)
    {
      return (int)(d1 * paramInt1);
      if (k < paramInt3) {
        d1 = 0.5D + (paramInt3 - k) / (paramInt3 - paramInt2) * 0.5D;
      }
    }
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  private void a(int paramInt)
  {
    LinearLayout localLinearLayout = new LinearLayout(getContext());
    d = new WebView(getContext().getApplicationContext())
    {
      public void onWindowFocusChanged(boolean paramAnonymousBoolean)
      {
        try
        {
          super.onWindowFocusChanged(paramAnonymousBoolean);
          return;
        }
        catch (NullPointerException localNullPointerException) {}
      }
    };
    d.setVerticalScrollBarEnabled(false);
    d.setHorizontalScrollBarEnabled(false);
    d.setWebViewClient(new as(this, null));
    d.getSettings().setJavaScriptEnabled(true);
    d.loadUrl(a);
    d.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    d.setVisibility(4);
    d.getSettings().setSavePassword(false);
    d.getSettings().setSaveFormData(false);
    d.setFocusable(true);
    d.setFocusableInTouchMode(true);
    d.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        if (!paramAnonymousView.hasFocus()) {
          paramAnonymousView.requestFocus();
        }
        return false;
      }
    });
    localLinearLayout.setPadding(paramInt, paramInt, paramInt, paramInt);
    localLinearLayout.addView(d);
    localLinearLayout.setBackgroundColor(-872415232);
    g.addView(localLinearLayout);
  }
  
  private void e()
  {
    f = new ImageView(getContext());
    f.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        cancel();
      }
    });
    Drawable localDrawable = getContext().getResources().getDrawable(aj.com_facebook_close);
    f.setImageDrawable(localDrawable);
    f.setVisibility(4);
  }
  
  protected Bundle a(String paramString)
  {
    paramString = Uri.parse(paramString);
    Bundle localBundle = al.c(paramString.getQuery());
    localBundle.putAll(al.c(paramString.getFragment()));
    return localBundle;
  }
  
  protected void a(Bundle paramBundle)
  {
    if ((c != null) && (!h))
    {
      h = true;
      c.a(paramBundle, null);
      dismiss();
    }
  }
  
  public void a(at paramat)
  {
    c = paramat;
  }
  
  protected void a(Throwable paramThrowable)
  {
    if ((c != null) && (!h))
    {
      h = true;
      if (!(paramThrowable instanceof h)) {
        break label47;
      }
    }
    label47:
    for (paramThrowable = (h)paramThrowable;; paramThrowable = new h(paramThrowable))
    {
      c.a(null, paramThrowable);
      dismiss();
      return;
    }
  }
  
  protected boolean a()
  {
    return h;
  }
  
  protected void b(String paramString)
  {
    b = paramString;
  }
  
  protected boolean b()
  {
    return j;
  }
  
  protected WebView c()
  {
    return d;
  }
  
  public void cancel()
  {
    if ((c != null) && (!h)) {
      a(new i());
    }
  }
  
  public void d()
  {
    Display localDisplay = ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    localDisplay.getMetrics(localDisplayMetrics);
    int k;
    if (widthPixels < heightPixels)
    {
      k = widthPixels;
      if (widthPixels >= heightPixels) {
        break label141;
      }
    }
    label141:
    for (int m = heightPixels;; m = widthPixels)
    {
      k = Math.min(a(k, density, 480, 800), widthPixels);
      m = Math.min(a(m, density, 800, 1280), heightPixels);
      getWindow().setLayout(k, m);
      return;
      k = heightPixels;
      break;
    }
  }
  
  public void dismiss()
  {
    if (d != null) {
      d.stopLoading();
    }
    if ((!i) && (e != null) && (e.isShowing())) {
      e.dismiss();
    }
    super.dismiss();
  }
  
  public void onAttachedToWindow()
  {
    i = false;
    super.onAttachedToWindow();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    e = new ProgressDialog(getContext());
    e.requestWindowFeature(1);
    e.setMessage(getContext().getString(am.com_facebook_loading));
    e.setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        cancel();
      }
    });
    requestWindowFeature(1);
    g = new FrameLayout(getContext());
    d();
    getWindow().setGravity(17);
    getWindow().setSoftInputMode(16);
    e();
    a(f.getDrawable().getIntrinsicWidth() / 2 + 1);
    g.addView(f, new ViewGroup.LayoutParams(-2, -2));
    setContentView(g);
  }
  
  public void onDetachedFromWindow()
  {
    i = true;
    super.onDetachedFromWindow();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4) {
      cancel();
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onStart()
  {
    super.onStart();
    d();
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */