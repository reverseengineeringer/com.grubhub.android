package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.facebook.share.model.ShareModel;

public class LikeContent
  implements ShareModel
{
  public static final Parcelable.Creator<LikeContent> CREATOR = new Parcelable.Creator()
  {
    public LikeContent a(Parcel paramAnonymousParcel)
    {
      return new LikeContent(paramAnonymousParcel);
    }
    
    public LikeContent[] a(int paramAnonymousInt)
    {
      return new LikeContent[paramAnonymousInt];
    }
  };
  private final String a;
  private final String b;
  
  LikeContent(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
  }
  
  private LikeContent(t paramt)
  {
    a = t.a(paramt);
    b = t.b(paramt);
  }
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.LikeContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */