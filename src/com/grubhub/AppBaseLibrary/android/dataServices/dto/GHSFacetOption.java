package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;

public class GHSFacetOption
  implements Parcelable
{
  public static final Parcelable.Creator<GHSFacetOption> CREATOR = new Parcelable.ClassLoaderCreator()
  {
    public GHSFacetOption createFromParcel(Parcel paramAnonymousParcel)
    {
      return new GHSFacetOption(paramAnonymousParcel, null);
    }
    
    public GHSFacetOption createFromParcel(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
    {
      return createFromParcel(paramAnonymousParcel);
    }
    
    public GHSFacetOption[] newArray(int paramAnonymousInt)
    {
      return new GHSFacetOption[0];
    }
  };
  protected int count;
  protected String displayName;
  protected String facetLinkFragment;
  protected String id;
  protected boolean selected;
  protected boolean visible;
  
  public GHSFacetOption() {}
  
  private GHSFacetOption(Parcel paramParcel)
  {
    id = paramParcel.readString();
    displayName = paramParcel.readString();
    facetLinkFragment = paramParcel.readString();
    count = paramParcel.readInt();
    if (paramParcel.readByte() != 0)
    {
      bool1 = true;
      visible = bool1;
      if (paramParcel.readByte() == 0) {
        break label72;
      }
    }
    label72:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      selected = bool1;
      return;
      bool1 = false;
      break;
    }
  }
  
  public GHSFacetOption(GHSFacetOption paramGHSFacetOption)
  {
    id = paramGHSFacetOption.getId();
    displayName = paramGHSFacetOption.getDisplayName();
    facetLinkFragment = paramGHSFacetOption.getUriQueryFragment();
    count = paramGHSFacetOption.getItemCount();
    visible = paramGHSFacetOption.isVisible();
    selected = paramGHSFacetOption.isSelected();
  }
  
  public GHSFacetOption(String paramString1, String paramString2, String paramString3, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    id = paramString1;
    displayName = paramString2;
    facetLinkFragment = paramString3;
    count = paramInt;
    if (!paramBoolean1) {}
    for (paramBoolean1 = true;; paramBoolean1 = false)
    {
      visible = paramBoolean1;
      selected = paramBoolean2;
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getDisplayName()
  {
    return displayName;
  }
  
  public String getId()
  {
    return id;
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
  
  public boolean isVisible()
  {
    return visible;
  }
  
  public void setSelected(boolean paramBoolean)
  {
    selected = paramBoolean;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeString(id);
    paramParcel.writeString(displayName);
    paramParcel.writeString(facetLinkFragment);
    paramParcel.writeInt(count);
    if (visible)
    {
      paramInt = 1;
      paramParcel.writeByte((byte)paramInt);
      if (!selected) {
        break label70;
      }
    }
    label70:
    for (paramInt = i;; paramInt = 0)
    {
      paramParcel.writeByte((byte)paramInt);
      return;
      paramInt = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFacetOption
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */