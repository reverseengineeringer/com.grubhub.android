package com.grubhub.AppBaseLibrary.android.utils.f;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.utils.f;

public class b
  implements a
{
  private boolean a;
  
  public b(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public View a(com.grubhub.AppBaseLibrary.android.c.b.b paramb, Context paramContext, ViewGroup paramViewGroup)
  {
    paramb = (com.grubhub.AppBaseLibrary.android.c.b.a)paramb;
    if (paramb.f() != 8)
    {
      paramContext = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903198, paramViewGroup, false);
      ((TextView)paramContext.findViewById(2131690246)).setText(paramb.d());
      paramContext.setContentDescription(paramb.d());
      if (f.b(paramb.a()))
      {
        ((TextView)paramContext.findViewById(2131690247)).setText(paramb.a());
        if (paramb.b() != null) {
          ((ImageView)paramContext.findViewById(2131690245)).setImageDrawable(paramb.b());
        }
        paramb = paramContext.findViewById(2131690248);
        if (!a) {
          break label143;
        }
      }
      label143:
      for (int i = 0;; i = 8)
      {
        paramb.setVisibility(i);
        return paramContext;
        paramContext.findViewById(2131690247).setVisibility(8);
        break;
      }
    }
    return new View(paramContext);
  }
  
  public void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.f.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */