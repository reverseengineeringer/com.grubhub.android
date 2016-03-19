package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2SavedAddressWrapperDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;

public class cu
  extends c<cu, ct, V2SavedAddressWrapperDTO, Void>
{
  private String j;
  private String k;
  private GHSIAddressDataModel l;
  
  public cu(Context paramContext)
  {
    super(paramContext);
  }
  
  public cu a(GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    l = paramGHSIAddressDataModel;
    return this;
  }
  
  public ct b()
  {
    return new ct(this, null);
  }
  
  protected cu c()
  {
    return this;
  }
  
  public cu e(String paramString)
  {
    j = paramString;
    return this;
  }
  
  public cu f(String paramString)
  {
    k = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */