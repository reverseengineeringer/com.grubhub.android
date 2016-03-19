package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPickupInfo;

public class V2PickupDTO
  implements Parcelable, GHSIPickupInfo
{
  public static final Parcelable.Creator<V2PickupDTO> CREATOR = new Parcelable.Creator()
  {
    public V2PickupDTO createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2PickupDTO(paramAnonymousParcel, null);
    }
    
    public V2PickupDTO[] newArray(int paramAnonymousInt)
    {
      return new V2PickupDTO[paramAnonymousInt];
    }
  };
  private String email;
  private Boolean green_indicated;
  private String name;
  private String phone;
  private String pickup_instructions;
  
  public V2PickupDTO() {}
  
  private V2PickupDTO(Parcel paramParcel)
  {
    name = ((String)paramParcel.readValue(null));
    phone = ((String)paramParcel.readValue(null));
    email = ((String)paramParcel.readValue(null));
    pickup_instructions = ((String)paramParcel.readValue(null));
    green_indicated = ((Boolean)paramParcel.readValue(null));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getEmail()
  {
    return email;
  }
  
  public Boolean getGreenIndicated()
  {
    return green_indicated;
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
    return pickup_instructions;
  }
  
  public void setEmail(String paramString)
  {
    email = paramString;
  }
  
  public void setGreenIndicated(Boolean paramBoolean)
  {
    green_indicated = paramBoolean;
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
    pickup_instructions = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(name);
    paramParcel.writeValue(phone);
    paramParcel.writeValue(email);
    paramParcel.writeValue(pickup_instructions);
    paramParcel.writeValue(green_indicated);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2PickupDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */