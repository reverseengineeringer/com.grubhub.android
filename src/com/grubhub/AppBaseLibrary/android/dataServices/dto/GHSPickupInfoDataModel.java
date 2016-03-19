package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPickupInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;

public class GHSPickupInfoDataModel
  implements GHSIPickupInfo
{
  private String email;
  private Boolean greenIndicated;
  private String name;
  private String phone;
  private String pickupInstructions;
  
  public GHSPickupInfoDataModel()
  {
    GHSIUserAuthDataModel localGHSIUserAuthDataModel = GHSApplication.a().b().N();
    if (localGHSIUserAuthDataModel != null)
    {
      setEmail(localGHSIUserAuthDataModel.getEmail());
      setName(localGHSIUserAuthDataModel.getFirstName());
      setPhone(GHSApplication.a().b().B());
    }
  }
  
  public String getEmail()
  {
    return email;
  }
  
  public Boolean getGreenIndicated()
  {
    return greenIndicated;
  }
  
  public String getName()
  {
    return name;
  }
  
  public String getPhone()
  {
    return phone;
  }
  
  public String getPickupInstructions()
  {
    return pickupInstructions;
  }
  
  public void setEmail(String paramString)
  {
    email = paramString;
  }
  
  public void setGreenIndicated(Boolean paramBoolean)
  {
    greenIndicated = paramBoolean;
  }
  
  public void setName(String paramString)
  {
    name = paramString;
  }
  
  public void setPhone(String paramString)
  {
    phone = paramString;
  }
  
  public void setPickupInstructions(String paramString)
  {
    pickupInstructions = paramString;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPickupInfoDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */