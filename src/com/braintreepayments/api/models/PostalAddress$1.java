package com.braintreepayments.api.models;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class PostalAddress$1
  implements Parcelable.Creator<PostalAddress>
{
  public PostalAddress a(Parcel paramParcel)
  {
    return new PostalAddress(paramParcel, null);
  }
  
  public PostalAddress[] a(int paramInt)
  {
    return new PostalAddress[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.models.PostalAddress.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */