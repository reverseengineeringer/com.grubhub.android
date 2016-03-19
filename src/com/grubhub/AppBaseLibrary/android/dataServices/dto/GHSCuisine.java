package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;

public class GHSCuisine
  implements Parcelable
{
  public static final Parcelable.Creator<GHSCuisine> CREATOR = new Parcelable.ClassLoaderCreator()
  {
    public GHSCuisine createFromParcel(Parcel paramAnonymousParcel)
    {
      return new GHSCuisine(paramAnonymousParcel, null);
    }
    
    public GHSCuisine createFromParcel(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
    {
      return createFromParcel(paramAnonymousParcel);
    }
    
    public GHSCuisine[] newArray(int paramAnonymousInt)
    {
      return new GHSCuisine[0];
    }
  };
  protected int count;
  protected String displayName;
  protected String facetLinkFragment;
  protected boolean selected;
  
  public GHSCuisine() {}
  
  private GHSCuisine(Parcel paramParcel)
  {
    facetLinkFragment = paramParcel.readString();
    displayName = paramParcel.readString();
    count = paramParcel.readInt();
    if (paramParcel.readByte() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      selected = bool;
      return;
    }
  }
  
  public GHSCuisine(String paramString1, int paramInt, String paramString2)
  {
    displayName = paramString1;
    count = paramInt;
    facetLinkFragment = paramString2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getDisplayName()
  {
    return displayName;
  }
  
  public int getItemCount()
  {
    return count;
  }
  
  public String getUriQueryFragment()
  {
    return facetLinkFragment;
  }
  
  public boolean isSelected()
  {
    return selected;
  }
  
  public void setDisplayName(String paramString)
  {
    displayName = paramString;
  }
  
  public void setSelected(boolean paramBoolean)
  {
    selected = paramBoolean;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(facetLinkFragment);
    paramParcel.writeString(displayName);
    paramParcel.writeInt(count);
    if (selected) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeByte((byte)paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCuisine
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */