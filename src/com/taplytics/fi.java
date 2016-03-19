package com.taplytics;

import android.app.AlertDialog;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

public class fi
{
  private static fi d = null;
  AlertDialog a;
  AlertDialog b;
  AlertDialog c;
  
  public static fi a()
  {
    if (d != null) {
      return d;
    }
    d = new fi();
    return d;
  }
  
  private void a(String paramString, Exception paramException)
  {
    ck.b("dialog err " + paramString, paramException);
    if ((fy.e().i()) && (fy.e().q() != null)) {}
    try
    {
      paramString = Toast.makeText(fy.e().q(), "There was an error creating your experiment list. Please contact taplytics for help.", 1);
      paramException = (TextView)paramString.getView().findViewById(16908299);
      if (paramException != null) {
        paramException.setGravity(17);
      }
      paramString.show();
    }
    catch (Exception paramString)
    {
      for (;;) {}
    }
    c();
  }
  
  private void e()
  {
    try
    {
      Object localObject1 = (ViewGroup)((ViewGroup)((ViewGroup)((ViewGroup)((FrameLayout)a.getWindow().getDecorView()).getChildAt(0)).getChildAt(0)).getChildAt(0)).getChildAt(0);
      TextView localTextView1;
      Object localObject2;
      if ((((ViewGroup)localObject1).getChildAt(0) instanceof LinearLayout))
      {
        localObject1 = (LinearLayout)((ViewGroup)localObject1).getChildAt(0);
        ((LinearLayout)localObject1).setOrientation(1);
        localTextView1 = new TextView(fy.e().q());
        if ((!fy.e().g()) || (!aa)) {
          break label342;
        }
        localObject2 = "  Connectivity: " + "connected.";
      }
      for (;;)
      {
        TextView localTextView2 = new TextView(fy.e().q());
        localTextView2.setText("This pop-up will only appear on devices with debug builds, or on release build devices previously connected to Taplytics in debug. \n");
        localTextView2.setTextSize(9.0F);
        ((LinearLayout)localObject1).addView(localTextView2, 2);
        localTextView1.setText((CharSequence)localObject2);
        ((LinearLayout)localObject1).addView(localTextView1, 3);
        if (!gq.h().a()) {
          return;
        }
        localObject2 = new TextView(fy.e().q());
        localTextView1 = new TextView(fy.e().q());
        if ((gq.h().e() != null) && (!gq.h().e().equals("")))
        {
          ((TextView)localObject2).setText("  Experiment: " + gq.h().e());
          ((LinearLayout)localObject1).addView((View)localObject2, 4);
        }
        if ((gq.h().f() == null) || (gq.h().f().equals(""))) {
          return;
        }
        localTextView1.setText("  Variation: " + gq.h().f());
        ((LinearLayout)localObject1).addView(localTextView1, 5);
        return;
        if (!(((ViewGroup)localObject1).getChildAt(1) instanceof LinearLayout)) {
          return;
        }
        localObject1 = (LinearLayout)((ViewGroup)localObject1).getChildAt(1);
        break;
        label342:
        localObject2 = "  Connectivity: " + " not connected to Taplytics.";
        localTextView1.setTextColor(jq.a(b.ape));
      }
      return;
    }
    catch (Exception localException)
    {
      ck.b("Error adding extra info to dialog", localException);
    }
  }
  
  public void b()
  {
    try
    {
      if (fy.e().q() != null) {
        new Handler(Looper.getMainLooper()).post(new fj(this));
      }
      return;
    }
    catch (Exception localException)
    {
      ck.b("dialog err", localException);
    }
  }
  
  public void c()
  {
    try
    {
      if ((a != null) && (a.isShowing())) {
        a.dismiss();
      }
      if ((b != null) && (a != null) && (a.isShowing())) {
        b.dismiss();
      }
      if ((c != null) && (c.isShowing())) {
        c.dismiss();
      }
      return;
    }
    catch (Exception localException)
    {
      ck.b("problem killing dialogs", localException);
    }
  }
  
  public boolean d()
  {
    return (jk.a(a)) || (jk.a(b)) || (jk.a(c));
  }
}

/* Location:
 * Qualified Name:     com.taplytics.fi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */