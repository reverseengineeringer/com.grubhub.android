package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.TextView;
import android.widget.ViewFlipper;
import com.grubhub.AppBaseLibrary.android.utils.f;

public class GHSLoadingViewFlipper
  extends ViewFlipper
{
  private boolean a = false;
  private ViewGroup b;
  private TextView c;
  private TextView d;
  private ViewGroup e;
  
  public GHSLoadingViewFlipper(Context paramContext)
  {
    super(paramContext);
    c();
  }
  
  public GHSLoadingViewFlipper(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    c();
  }
  
  private void c()
  {
    if (!isInEditMode())
    {
      LayoutInflater.from(getContext()).inflate(2130903202, this, true);
      b = ((ViewGroup)findViewById(2131690257));
      c = ((TextView)findViewById(2131690256));
      d = ((TextView)findViewById(2131690258));
      e = ((ViewGroup)findViewById(2131690259));
      setInAnimation(getContext(), 17432576);
      setOutAnimation(getContext(), 17432577);
      a = true;
    }
  }
  
  public void a()
  {
    if (getDisplayedChild() != 0) {
      setDisplayedChild(0);
    }
  }
  
  public void a(int paramInt, View.OnClickListener paramOnClickListener)
  {
    setDisplayedChild(2);
    d.setText(paramInt);
    d.setOnClickListener(paramOnClickListener);
  }
  
  public void a(View paramView, View.OnClickListener paramOnClickListener)
  {
    e.removeAllViews();
    paramView.setOnClickListener(paramOnClickListener);
    e.addView(paramView);
    setDisplayedChild(3);
  }
  
  public void a(String paramString, View.OnClickListener paramOnClickListener)
  {
    setDisplayedChild(2);
    d.setText(paramString);
    d.setOnClickListener(paramOnClickListener);
  }
  
  public void addView(View paramView)
  {
    if (a)
    {
      b.addView(paramView);
      return;
    }
    super.addView(paramView);
  }
  
  public void addView(View paramView, int paramInt1, int paramInt2)
  {
    if (a)
    {
      b.addView(paramView, paramInt1, paramInt2);
      return;
    }
    super.addView(paramView, paramInt1, paramInt2);
  }
  
  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (a)
    {
      b.addView(paramView, paramLayoutParams);
      return;
    }
    super.addView(paramView, paramLayoutParams);
  }
  
  public void b()
  {
    if (getDisplayedChild() != 1) {
      setDisplayedChild(1);
    }
  }
  
  public void removeView(View paramView)
  {
    if (a)
    {
      b.removeView(paramView);
      return;
    }
    super.removeView(paramView);
  }
  
  public void setLoadingText(String paramString)
  {
    c.setText(paramString);
    if (f.a(paramString))
    {
      c.setVisibility(8);
      return;
    }
    c.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */