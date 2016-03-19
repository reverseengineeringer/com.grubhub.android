package com.grubhub.AppBaseLibrary.android.utils.f;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.c.b.b;

public class c
  implements a
{
  public View a(b paramb, Context paramContext, ViewGroup paramViewGroup)
  {
    paramb = (com.grubhub.AppBaseLibrary.android.c.b.c)paramb;
    paramContext = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903199, paramViewGroup, false);
    ((TextView)paramContext.findViewById(2131690251)).setText(paramb.d());
    paramContext.setContentDescription(paramb.d());
    if (paramb.a() != null) {
      ((ImageView)paramContext.findViewById(2131690250)).setImageDrawable(paramb.a());
    }
    return paramContext;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.f.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */