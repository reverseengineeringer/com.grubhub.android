package com.grubhub.AppBaseLibrary.android.dataServices.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;

public class b
  extends a<GHSIFoodMenuDataModel.GHSIMenuItem>
  implements i
{
  private String b;
  private String c;
  
  public b(Context paramContext, String paramString1, String paramString2, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    b = paramString1;
    c = paramString2;
  }
  
  public void a()
  {
    super.a();
    b().a(b, c, this, this, f());
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */