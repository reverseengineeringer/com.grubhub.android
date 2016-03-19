package com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;

public class b
  implements a
{
  private boolean a = GHSApplication.a().b().H();
  
  public View a(Context paramContext, ViewGroup paramViewGroup)
  {
    paramContext = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903232, paramViewGroup, false);
    if (!a) {
      ((ImageView)paramContext.findViewById(2131690335)).setImageResource(2130837884);
    }
    return paramContext;
  }
  
  public View b(Context paramContext, ViewGroup paramViewGroup)
  {
    paramContext = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903235, paramViewGroup, false);
    if (!a) {
      ((ImageView)paramContext.findViewById(2131690336)).setImageResource(2130837884);
    }
    return paramContext;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */