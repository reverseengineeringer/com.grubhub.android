package com.braintreepayments.api.models;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class AndroidPayCard$1
  implements Parcelable.Creator<AndroidPayCard>
{
  public AndroidPayCard a(Parcel paramParcel)
  {
    return new AndroidPayCard(paramParcel, null);
  }
  
  public AndroidPayCard[] a(int paramInt)
  {
    return new AndroidPayCard[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.models.AndroidPayCard.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */