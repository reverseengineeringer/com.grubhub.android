package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

public class GHSWelcomeScreenAddressBar
  extends GHSAddressBar
{
  private aa i;
  
  public GHSWelcomeScreenAddressBar(Context paramContext)
  {
    super(paramContext);
  }
  
  public GHSWelcomeScreenAddressBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public GHSWelcomeScreenAddressBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    super.a(paramContext, paramAttributeSet);
    if (!isInEditMode())
    {
      if (b != null)
      {
        b.setHint(2131232062);
        b.setTextColor(getResources().getColor(2131558481));
        b.setHintTextColor(getResources().getColor(2131558481));
        b.setBackgroundResource(0);
        b.setOnEditorActionListener(new TextView.OnEditorActionListener()
        {
          public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
          {
            if (paramAnonymousInt == 3) {
              h.a().a(new c("enter address", "typed full address", ""));
            }
            if (f != null) {
              return f.onEditorAction(paramAnonymousTextView, paramAnonymousInt, paramAnonymousKeyEvent);
            }
            return false;
          }
        });
        b.setOnItemClickListener(new AdapterView.OnItemClickListener()
        {
          public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
          {
            if (h != null) {
              h.onItemClick(paramAnonymousAdapterView, paramAnonymousView, paramAnonymousInt, paramAnonymousLong);
            }
            h.a().a(new c("enter address", "select autocompleted address", ""));
          }
        });
      }
      if (c != null) {
        c.setImageResource(2130837680);
      }
      if (d != null) {
        d.setImageResource(2130837775);
      }
      if (a != null)
      {
        a.findViewById(2131689653).setVisibility(8);
        a.findViewById(2131689643).setVisibility(8);
      }
      if (e != null) {
        e.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            if (g != null) {
              g.onClick(paramAnonymousView);
            }
            h.a().a(new c("enter address", "geolocate current location", ""));
          }
        });
      }
    }
  }
  
  public boolean dispatchKeyEventPreIme(KeyEvent paramKeyEvent)
  {
    if ((i != null) && (paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getAction() == 0))
    {
      if (i.a()) {
        return super.dispatchKeyEventPreIme(paramKeyEvent);
      }
      i.b();
      return true;
    }
    return super.dispatchKeyEventPreIme(paramKeyEvent);
  }
  
  public void setListener(aa paramaa)
  {
    i = paramaa;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSWelcomeScreenAddressBar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */