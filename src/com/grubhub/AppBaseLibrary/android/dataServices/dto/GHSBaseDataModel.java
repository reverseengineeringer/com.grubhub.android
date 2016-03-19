package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBaseDataModel;

public class GHSBaseDataModel
  implements GHSIBaseDataModel
{
  private String dataModelVersion;
  
  public String getDataModelVersion()
  {
    return dataModelVersion;
  }
  
  public void setDataModelVersion(String paramString)
  {
    dataModelVersion = paramString;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSBaseDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */