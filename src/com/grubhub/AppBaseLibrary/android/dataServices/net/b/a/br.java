package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;

public class br
  extends c<br, bq, GHSIAddressDataModel, Void>
{
  protected Double j;
  protected Double k;
  
  public br(Context paramContext)
  {
    super(paramContext);
  }
  
  public br a(Double paramDouble)
  {
    j = paramDouble;
    return this;
  }
  
  public bq b()
  {
    return new bq(this, null);
  }
  
  public br b(Double paramDouble)
  {
    k = paramDouble;
    return this;
  }
  
  protected br c()
  {
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */