package com.grubhub.AppBaseLibrary.android.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;

public class b
  extends ArrayAdapter<com.grubhub.AppBaseLibrary.android.c.b.b>
{
  private final Context a;
  private com.grubhub.AppBaseLibrary.android.c.b.b[] b;
  
  public b(Context paramContext, com.grubhub.AppBaseLibrary.android.c.b.b[] paramArrayOfb)
  {
    super(paramContext, 2130903198, paramArrayOfb);
    a = paramContext;
    b = paramArrayOfb;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return b[paramInt].a(a, paramViewGroup);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */