package com.grubhub.AppBaseLibrary.android.dataServices.dto.yummyRummy;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyAccessModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyAccessModel.GHSIYummyRummyMetadataModel;

public class GHSYummyRummyAccessModel
  implements GHSIYummyRummyAccessModel
{
  private GHSYummyRummyAccessModel.GHSYummyRummyMetadata metadata;
  
  public GHSIYummyRummyAccessModel.GHSIYummyRummyMetadataModel getMetadata()
  {
    return metadata;
  }
  
  public void setMetadata(GHSIYummyRummyAccessModel.GHSIYummyRummyMetadataModel paramGHSIYummyRummyMetadataModel)
  {
    GHSYummyRummyAccessModel.GHSYummyRummyMetadata localGHSYummyRummyMetadata = new GHSYummyRummyAccessModel.GHSYummyRummyMetadata();
    if (paramGHSIYummyRummyMetadataModel != null) {
      localGHSYummyRummyMetadata.setOrderId(paramGHSIYummyRummyMetadataModel.getOrderId());
    }
    metadata = localGHSYummyRummyMetadata;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.yummyRummy.GHSYummyRummyAccessModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */