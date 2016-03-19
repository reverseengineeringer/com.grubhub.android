package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.TipTypes;

public class cm
  extends c<cm, cl, GHSICartDataModel, Void>
{
  private String j;
  private float k;
  private GHSICartDataModel.TipTypes l;
  
  public cm(Context paramContext)
  {
    super(paramContext);
  }
  
  public cm a(float paramFloat)
  {
    k = paramFloat;
    return this;
  }
  
  public cm a(GHSICartDataModel.TipTypes paramTipTypes)
  {
    l = paramTipTypes;
    return this;
  }
  
  public cl b()
  {
    return new cl(this, null);
  }
  
  protected cm c()
  {
    return this;
  }
  
  public cm e(String paramString)
  {
    j = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */