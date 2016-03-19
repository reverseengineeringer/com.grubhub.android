package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2SavedAddressWrapperDTO;

public class ce
  extends c<ce, cd, V2SavedAddressWrapperDTO, Void>
{
  private String j;
  private String k;
  
  public ce(Context paramContext)
  {
    super(paramContext);
  }
  
  public cd b()
  {
    return new cd(this, null);
  }
  
  protected ce c()
  {
    return this;
  }
  
  public ce e(String paramString)
  {
    j = paramString;
    return this;
  }
  
  public ce f(String paramString)
  {
    k = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */