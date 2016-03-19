package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import java.util.ArrayList;

public class bt
  extends c<bt, bs, ArrayList<GHSIAddressDataModel>, Void>
{
  protected String j;
  
  public bt(Context paramContext)
  {
    super(paramContext);
  }
  
  public bs b()
  {
    return new bs(this, null);
  }
  
  protected bt c()
  {
    return this;
  }
  
  public bt e(String paramString)
  {
    j = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */