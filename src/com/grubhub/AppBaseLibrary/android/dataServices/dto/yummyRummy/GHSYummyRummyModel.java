package com.grubhub.AppBaseLibrary.android.dataServices.dto.yummyRummy;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyModel;
import com.grubhub.AppBaseLibrary.android.utils.f;

public class GHSYummyRummyModel
  implements GHSIYummyRummyModel
{
  private GHSYummyRummyModel.GHSIntegration integrations;
  
  public String getCheckUrl()
  {
    if ((integrations == null) || (GHSYummyRummyModel.GHSIntegration.access$200(integrations) == null) || (f.a(GHSYummyRummyModel.GHSIntegrationObj.access$100(GHSYummyRummyModel.GHSIntegration.access$200(integrations))))) {
      return "";
    }
    return GHSYummyRummyModel.GHSIntegrationObj.access$100(GHSYummyRummyModel.GHSIntegration.access$200(integrations));
  }
  
  public String getPlayUrl()
  {
    if ((integrations == null) || (GHSYummyRummyModel.GHSIntegration.access$000(integrations) == null) || (f.a(GHSYummyRummyModel.GHSIntegrationObj.access$100(GHSYummyRummyModel.GHSIntegration.access$000(integrations))))) {
      return "";
    }
    return GHSYummyRummyModel.GHSIntegrationObj.access$100(GHSYummyRummyModel.GHSIntegration.access$000(integrations));
  }
  
  public String getRulesUrl()
  {
    if ((integrations == null) || (GHSYummyRummyModel.GHSIntegration.access$300(integrations) == null) || (f.a(GHSYummyRummyModel.GHSIntegrationObj.access$100(GHSYummyRummyModel.GHSIntegration.access$300(integrations))))) {
      return "";
    }
    return GHSYummyRummyModel.GHSIntegrationObj.access$100(GHSYummyRummyModel.GHSIntegration.access$300(integrations));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.yummyRummy.GHSYummyRummyModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */