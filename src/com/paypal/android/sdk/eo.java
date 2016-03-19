package com.paypal.android.sdk;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.TextView;

public final class eo
{
  public LinearLayout a;
  public TextView b;
  private LinearLayout c;
  
  public eo(Context paramContext)
  {
    c = new LinearLayout(paramContext);
    c.setOrientation(0);
    b = new TextView(paramContext);
    b.setText("server");
    b.setTextColor(-1);
    b.setBackgroundColor(eb.e);
    b.setGravity(17);
    c.addView(b);
    ec.a(b, "8dip", "8dip", "8dip", "8dip");
    ec.a(b, -2, -2);
    ec.b(b, null, "15dip", null, "15dip");
    ec.a(b, 1, 1.0F);
    a = c;
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.eo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */