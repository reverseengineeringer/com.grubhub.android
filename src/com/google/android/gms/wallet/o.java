package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class o
  implements Parcelable.Creator<CreateWalletObjectsRequest>
{
  static void a(CreateWalletObjectsRequest paramCreateWalletObjectsRequest, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, paramCreateWalletObjectsRequest.a());
    c.a(paramParcel, 2, a, paramInt, false);
    c.a(paramParcel, 3, b, paramInt, false);
    c.a(paramParcel, 4, c, paramInt, false);
    c.a(paramParcel, i);
  }
  
  public CreateWalletObjectsRequest a(Parcel paramParcel)
  {
    GiftCardWalletObject localGiftCardWalletObject = null;
    int j = a.b(paramParcel);
    int i = 0;
    Object localObject2 = null;
    Object localObject1 = null;
    if (paramParcel.dataPosition() < j)
    {
      int k = a.a(paramParcel);
      Object localObject3;
      switch (a.a(k))
      {
      default: 
        a.b(paramParcel, k);
        localObject3 = localObject2;
        localObject2 = localObject1;
        localObject1 = localObject3;
      }
      for (;;)
      {
        localObject3 = localObject2;
        localObject2 = localObject1;
        localObject1 = localObject3;
        break;
        i = a.e(paramParcel, k);
        localObject3 = localObject1;
        localObject1 = localObject2;
        localObject2 = localObject3;
        continue;
        localObject3 = (LoyaltyWalletObject)a.a(paramParcel, k, LoyaltyWalletObject.CREATOR);
        localObject1 = localObject2;
        localObject2 = localObject3;
        continue;
        localObject3 = (OfferWalletObject)a.a(paramParcel, k, OfferWalletObject.CREATOR);
        localObject2 = localObject1;
        localObject1 = localObject3;
        continue;
        localGiftCardWalletObject = (GiftCardWalletObject)a.a(paramParcel, k, GiftCardWalletObject.CREATOR);
        localObject3 = localObject1;
        localObject1 = localObject2;
        localObject2 = localObject3;
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new CreateWalletObjectsRequest(i, (LoyaltyWalletObject)localObject1, (OfferWalletObject)localObject2, localGiftCardWalletObject);
  }
  
  public CreateWalletObjectsRequest[] a(int paramInt)
  {
    return new CreateWalletObjectsRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */