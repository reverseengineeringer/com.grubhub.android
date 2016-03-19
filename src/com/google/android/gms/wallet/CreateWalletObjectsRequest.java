package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class CreateWalletObjectsRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<CreateWalletObjectsRequest> CREATOR = new o();
  LoyaltyWalletObject a;
  OfferWalletObject b;
  GiftCardWalletObject c;
  private final int d;
  
  CreateWalletObjectsRequest()
  {
    d = 3;
  }
  
  CreateWalletObjectsRequest(int paramInt, LoyaltyWalletObject paramLoyaltyWalletObject, OfferWalletObject paramOfferWalletObject, GiftCardWalletObject paramGiftCardWalletObject)
  {
    d = paramInt;
    a = paramLoyaltyWalletObject;
    b = paramOfferWalletObject;
    c = paramGiftCardWalletObject;
  }
  
  public int a()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    o.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.CreateWalletObjectsRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */