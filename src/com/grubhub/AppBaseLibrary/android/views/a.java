package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class a
  extends RelativeLayout
{
  private ImageView a;
  private ImageView b;
  private ImageView c;
  private ImageView d;
  private TextView e;
  private TextView f;
  private TextView g;
  private TextView h;
  
  public a(Context paramContext, boolean paramBoolean)
  {
    super(paramContext);
    a(paramContext, paramBoolean);
  }
  
  private void a(Context paramContext, boolean paramBoolean)
  {
    LayoutInflater.from(paramContext).inflate(2130903086, this, true);
    e = ((TextView)findViewById(2131689663));
    f = ((TextView)findViewById(2131689665));
    g = ((TextView)findViewById(2131689668));
    h = ((TextView)findViewById(2131689670));
    a = ((ImageView)findViewById(2131689664));
    b = ((ImageView)findViewById(2131689666));
    c = ((ImageView)findViewById(2131689669));
    d = ((ImageView)findViewById(2131689671));
    paramContext = findViewById(2131689667);
    if (paramBoolean) {
      paramContext.setVisibility(0);
    }
    for (;;)
    {
      requestLayout();
      return;
      paramContext.setVisibility(8);
    }
  }
  
  public void a()
  {
    e.setSelected(true);
    f.setSelected(false);
    g.setSelected(false);
    h.setSelected(false);
    a.setSelected(true);
    b.setSelected(false);
    c.setSelected(false);
    d.setSelected(false);
  }
  
  public void b()
  {
    e.setSelected(true);
    f.setSelected(true);
    g.setSelected(false);
    h.setSelected(false);
    a.setSelected(true);
    b.setSelected(true);
    c.setSelected(false);
    d.setSelected(false);
  }
  
  public void c()
  {
    e.setSelected(true);
    f.setSelected(true);
    g.setSelected(true);
    h.setSelected(false);
    a.setSelected(true);
    b.setSelected(true);
    c.setSelected(true);
    d.setSelected(false);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */