package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.wallet.wobs.CommonWalletObject;

public class r
  implements Parcelable.Creator<GiftCardWalletObject>
{
  static void a(GiftCardWalletObject paramGiftCardWalletObject, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, paramGiftCardWalletObject.a());
    c.a(paramParcel, 2, b, paramInt, false);
    c.a(paramParcel, 3, c, false);
    c.a(paramParcel, 4, d, false);
    c.a(paramParcel, 5, e, false);
    c.a(paramParcel, 6, f);
    c.a(paramParcel, 7, g, false);
    c.a(paramParcel, 8, h);
    c.a(paramParcel, 9, paramGiftCardWalletObject.i, false);
    c.a(paramParcel, i);
  }
  
  public GiftCardWalletObject a(Parcel paramParcel)
  {
    long l1 = 0L;
    String str1 = null;
    int j = a.b(paramParcel);
    int i = 0;
    String str2 = null;
    long l2 = 0L;
    String str3 = null;
    String str4 = null;
    String str5 = null;
    CommonWalletObject localCommonWalletObject = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.a(paramParcel);
      switch (a.a(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        i = a.e(paramParcel, k);
        break;
      case 2: 
        localCommonWalletObject = (CommonWalletObject)a.a(paramParcel, k, CommonWalletObject.CREATOR);
        break;
      case 3: 
        str5 = a.j(paramParcel, k);
        break;
      case 4: 
        str4 = a.j(paramParcel, k);
        break;
      case 5: 
        str3 = a.j(paramParcel, k);
        break;
      case 6: 
        l2 = a.g(paramParcel, k);
        break;
      case 7: 
        str2 = a.j(paramParcel, k);
        break;
      case 8: 
        l1 = a.g(paramParcel, k);
        break;
      case 9: 
        str1 = a.j(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new GiftCardWalletObject(i, localCommonWalletObject, str5, str4, str3, l2, str2, l1, str1);
  }
  
  public GiftCardWalletObject[] a(int paramInt)
  {
    return new GiftCardWalletObject[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */