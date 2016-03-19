package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2SavedAddressWrapperDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;

public class o
  extends c<o, n, V2SavedAddressWrapperDTO, Void>
{
  private String j;
  private GHSIAddressDataModel k;
  
  public o(Context paramContext)
  {
    super(paramContext);
  }
  
  public o a(GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    k = paramGHSIAddressDataModel;
    return this;
  }
  
  public n b()
  {
    return new n(this, null);
  }
  
  protected o c()
  {
    return this;
  }
  
  public o e(String paramString)
  {
    j = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */