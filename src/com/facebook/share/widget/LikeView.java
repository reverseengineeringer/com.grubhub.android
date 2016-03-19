package com.facebook.share.widget;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.content.o;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.facebook.h;
import com.facebook.internal.al;
import com.facebook.share.internal.q;
import com.facebook.share.internal.r;
import com.facebook.share.internal.s;

public class LikeView
  extends FrameLayout
{
  private String a;
  private d b;
  private LinearLayout c;
  private s d;
  private q e;
  private TextView f;
  private com.facebook.share.internal.a g;
  private e h;
  private BroadcastReceiver i;
  private c j;
  private f k;
  private b l;
  private a m;
  private int n;
  private int o;
  private int p;
  private Fragment q;
  private boolean r;
  
  private void a()
  {
    if (g != null)
    {
      Activity localActivity = null;
      if (q == null) {
        localActivity = getActivity();
      }
      g.a(localActivity, q, getAnalyticsParameters());
    }
  }
  
  private void a(com.facebook.share.internal.a parama)
  {
    g = parama;
    i = new LikeView.LikeControllerBroadcastReceiver(this, null);
    parama = o.a(getContext());
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.facebook.sdk.LikeActionController.UPDATED");
    localIntentFilter.addAction("com.facebook.sdk.LikeActionController.DID_ERROR");
    localIntentFilter.addAction("com.facebook.sdk.LikeActionController.DID_RESET");
    parama.a(i, localIntentFilter);
  }
  
  private void b()
  {
    if (i != null)
    {
      o.a(getContext()).a(i);
      i = null;
    }
    if (j != null)
    {
      j.a();
      j = null;
    }
    g = null;
  }
  
  private void b(String paramString, d paramd)
  {
    b();
    a = paramString;
    b = paramd;
    if (al.a(paramString)) {}
    do
    {
      return;
      j = new c(this, null);
    } while (isInEditMode());
    com.facebook.share.internal.a.a(paramString, paramd, j);
  }
  
  private void c()
  {
    boolean bool;
    if (!r)
    {
      bool = true;
      if (g != null) {
        break label63;
      }
      d.setSelected(false);
      f.setText(null);
      e.setText(null);
    }
    for (;;)
    {
      super.setEnabled(bool);
      d.setEnabled(bool);
      d();
      return;
      bool = false;
      break;
      label63:
      d.setSelected(g.d());
      f.setText(g.c());
      e.setText(g.b());
      bool &= g.e();
    }
  }
  
  private void d()
  {
    int i2 = 1;
    Object localObject1 = (FrameLayout.LayoutParams)c.getLayoutParams();
    Object localObject2 = (LinearLayout.LayoutParams)d.getLayoutParams();
    int i1;
    if (l == b.LEFT)
    {
      i1 = 3;
      gravity = (i1 | 0x30);
      gravity = i1;
      f.setVisibility(8);
      e.setVisibility(8);
      if ((k != f.STANDARD) || (g == null) || (al.a(g.c()))) {
        break label257;
      }
      localObject1 = f;
      label104:
      ((View)localObject1).setVisibility(0);
      getLayoutParamsgravity = i1;
      localObject2 = c;
      i1 = i2;
      if (m == a.INLINE) {
        i1 = 0;
      }
      ((LinearLayout)localObject2).setOrientation(i1);
      if ((m != a.TOP) && ((m != a.INLINE) || (l != b.RIGHT))) {
        break label299;
      }
      c.removeView(d);
      c.addView(d);
    }
    for (;;)
    {
      switch (2.a[m.ordinal()])
      {
      default: 
        label257:
        do
        {
          return;
          if (l == b.CENTER)
          {
            i1 = 1;
            break;
          }
          i1 = 5;
          break;
        } while ((k != f.BOX_COUNT) || (g == null) || (al.a(g.b())));
        e();
        localObject1 = e;
        break label104;
        label299:
        c.removeView((View)localObject1);
        c.addView((View)localObject1);
      }
    }
    ((View)localObject1).setPadding(o, o, o, p);
    return;
    ((View)localObject1).setPadding(o, p, o, o);
    return;
    if (l == b.RIGHT)
    {
      ((View)localObject1).setPadding(o, o, p, o);
      return;
    }
    ((View)localObject1).setPadding(p, o, o, o);
  }
  
  private void e()
  {
    switch (2.a[m.ordinal()])
    {
    default: 
      return;
    case 1: 
      e.setCaretPosition(r.BOTTOM);
      return;
    case 2: 
      e.setCaretPosition(r.TOP);
      return;
    }
    q localq = e;
    if (l == b.RIGHT) {}
    for (r localr = r.RIGHT;; localr = r.LEFT)
    {
      localq.setCaretPosition(localr);
      return;
    }
  }
  
  private Activity getActivity()
  {
    for (Context localContext = getContext(); (!(localContext instanceof Activity)) && ((localContext instanceof ContextWrapper)); localContext = ((ContextWrapper)localContext).getBaseContext()) {}
    if ((localContext instanceof Activity)) {
      return (Activity)localContext;
    }
    throw new h("Unable to get Activity.");
  }
  
  private Bundle getAnalyticsParameters()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("style", k.toString());
    localBundle.putString("auxiliary_position", m.toString());
    localBundle.putString("horizontal_alignment", l.toString());
    localBundle.putString("object_id", al.a(a, ""));
    localBundle.putString("object_type", b.toString());
    return localBundle;
  }
  
  public void a(String paramString, d paramd)
  {
    paramString = al.a(paramString, null);
    if (paramd != null) {}
    for (;;)
    {
      if ((!al.a(paramString, a)) || (paramd != b))
      {
        b(paramString, paramd);
        c();
      }
      return;
      paramd = d.DEFAULT;
    }
  }
  
  public e getOnErrorListener()
  {
    return h;
  }
  
  protected void onDetachedFromWindow()
  {
    a(null, d.UNKNOWN);
    super.onDetachedFromWindow();
  }
  
  public void setAuxiliaryViewPosition(a parama)
  {
    if (parama != null) {}
    for (;;)
    {
      if (m != parama)
      {
        m = parama;
        d();
      }
      return;
      parama = a.DEFAULT;
    }
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      r = paramBoolean;
      c();
      return;
    }
  }
  
  public void setForegroundColor(int paramInt)
  {
    if (n != paramInt) {
      f.setTextColor(paramInt);
    }
  }
  
  public void setFragment(Fragment paramFragment)
  {
    q = paramFragment;
  }
  
  public void setHorizontalAlignment(b paramb)
  {
    if (paramb != null) {}
    for (;;)
    {
      if (l != paramb)
      {
        l = paramb;
        d();
      }
      return;
      paramb = b.DEFAULT;
    }
  }
  
  public void setLikeViewStyle(f paramf)
  {
    if (paramf != null) {}
    for (;;)
    {
      if (k != paramf)
      {
        k = paramf;
        d();
      }
      return;
      paramf = f.DEFAULT;
    }
  }
  
  public void setOnErrorListener(e parame)
  {
    h = parame;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.LikeView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */