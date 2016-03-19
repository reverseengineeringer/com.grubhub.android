package com.crashlytics.android;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.widget.ScrollView;
import android.widget.TextView;
import com.crashlytics.android.internal.aQ;

final class p
  implements Runnable
{
  p(Crashlytics paramCrashlytics, Activity paramActivity, u paramu, X paramX, aQ paramaQ) {}
  
  public final void run()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(c);
    Object localObject = new q(this);
    float f = c.getResources().getDisplayMetrics().density;
    int i = Crashlytics.a(b, f, 5);
    TextView localTextView = new TextView(c);
    localTextView.setAutoLinkMask(15);
    localTextView.setText(d.b());
    localTextView.setTextAppearance(c, 16973892);
    localTextView.setPadding(i, i, i, i);
    localTextView.setFocusable(false);
    ScrollView localScrollView = new ScrollView(c);
    localScrollView.setPadding(Crashlytics.a(b, f, 14), Crashlytics.a(b, f, 2), Crashlytics.a(b, f, 10), Crashlytics.a(b, f, 12));
    localScrollView.addView(localTextView);
    localBuilder.setView(localScrollView).setTitle(d.a()).setCancelable(false).setNeutralButton(d.c(), (DialogInterface.OnClickListener)localObject);
    if (e.d)
    {
      localObject = new r(this);
      localBuilder.setNegativeButton(d.e(), (DialogInterface.OnClickListener)localObject);
    }
    if (e.f)
    {
      localObject = new s(this);
      localBuilder.setPositiveButton(d.d(), (DialogInterface.OnClickListener)localObject);
    }
    localBuilder.show();
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */