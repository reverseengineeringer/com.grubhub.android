package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import com.google.android.gms.d.az;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.wallet.wobs.LabelValueRow;
import com.google.android.gms.wallet.wobs.LoyaltyPoints;
import com.google.android.gms.wallet.wobs.TextModuleData;
import com.google.android.gms.wallet.wobs.TimeInterval;
import com.google.android.gms.wallet.wobs.UriData;
import com.google.android.gms.wallet.wobs.WalletObjectMessage;
import java.util.ArrayList;

public class u
  implements Parcelable.Creator<LoyaltyWalletObject>
{
  static void a(LoyaltyWalletObject paramLoyaltyWalletObject, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, paramLoyaltyWalletObject.a());
    c.a(paramParcel, 2, a, false);
    c.a(paramParcel, 3, b, false);
    c.a(paramParcel, 4, c, false);
    c.a(paramParcel, 5, d, false);
    c.a(paramParcel, 6, e, false);
    c.a(paramParcel, 7, f, false);
    c.a(paramParcel, 8, g, false);
    c.a(paramParcel, 9, h, false);
    c.a(paramParcel, 10, paramLoyaltyWalletObject.i, false);
    c.a(paramParcel, 11, j, false);
    c.a(paramParcel, 12, k);
    c.b(paramParcel, 13, l, false);
    c.a(paramParcel, 14, m, paramInt, false);
    c.b(paramParcel, 15, n, false);
    c.a(paramParcel, 17, p, false);
    c.a(paramParcel, 16, o, false);
    c.a(paramParcel, 19, r);
    c.b(paramParcel, 18, q, false);
    c.b(paramParcel, 21, t, false);
    c.b(paramParcel, 20, s, false);
    c.a(paramParcel, 23, v, paramInt, false);
    c.b(paramParcel, 22, u, false);
    c.a(paramParcel, i);
  }
  
  public LoyaltyWalletObject a(Parcel paramParcel)
  {
    int k = a.b(paramParcel);
    int j = 0;
    String str12 = null;
    String str11 = null;
    String str10 = null;
    String str9 = null;
    String str8 = null;
    String str7 = null;
    String str6 = null;
    String str5 = null;
    String str4 = null;
    String str3 = null;
    int i = 0;
    ArrayList localArrayList6 = az.a();
    TimeInterval localTimeInterval = null;
    ArrayList localArrayList5 = az.a();
    String str2 = null;
    String str1 = null;
    ArrayList localArrayList4 = az.a();
    boolean bool = false;
    ArrayList localArrayList3 = az.a();
    ArrayList localArrayList2 = az.a();
    ArrayList localArrayList1 = az.a();
    LoyaltyPoints localLoyaltyPoints = null;
    while (paramParcel.dataPosition() < k)
    {
      int m = a.a(paramParcel);
      switch (a.a(m))
      {
      default: 
        a.b(paramParcel, m);
        break;
      case 1: 
        j = a.e(paramParcel, m);
        break;
      case 2: 
        str12 = a.j(paramParcel, m);
        break;
      case 3: 
        str11 = a.j(paramParcel, m);
        break;
      case 4: 
        str10 = a.j(paramParcel, m);
        break;
      case 5: 
        str9 = a.j(paramParcel, m);
        break;
      case 6: 
        str8 = a.j(paramParcel, m);
        break;
      case 7: 
        str7 = a.j(paramParcel, m);
        break;
      case 8: 
        str6 = a.j(paramParcel, m);
        break;
      case 9: 
        str5 = a.j(paramParcel, m);
        break;
      case 10: 
        str4 = a.j(paramParcel, m);
        break;
      case 11: 
        str3 = a.j(paramParcel, m);
        break;
      case 12: 
        i = a.e(paramParcel, m);
        break;
      case 13: 
        localArrayList6 = a.c(paramParcel, m, WalletObjectMessage.CREATOR);
        break;
      case 14: 
        localTimeInterval = (TimeInterval)a.a(paramParcel, m, TimeInterval.CREATOR);
        break;
      case 15: 
        localArrayList5 = a.c(paramParcel, m, LatLng.CREATOR);
        break;
      case 17: 
        str1 = a.j(paramParcel, m);
        break;
      case 16: 
        str2 = a.j(paramParcel, m);
        break;
      case 19: 
        bool = a.c(paramParcel, m);
        break;
      case 18: 
        localArrayList4 = a.c(paramParcel, m, LabelValueRow.CREATOR);
        break;
      case 21: 
        localArrayList2 = a.c(paramParcel, m, TextModuleData.CREATOR);
        break;
      case 20: 
        localArrayList3 = a.c(paramParcel, m, UriData.CREATOR);
        break;
      case 23: 
        localLoyaltyPoints = (LoyaltyPoints)a.a(paramParcel, m, LoyaltyPoints.CREATOR);
        break;
      case 22: 
        localArrayList1 = a.c(paramParcel, m, UriData.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new b("Overread allowed size end=" + k, paramParcel);
    }
    return new LoyaltyWalletObject(j, str12, str11, str10, str9, str8, str7, str6, str5, str4, str3, i, localArrayList6, localTimeInterval, localArrayList5, str2, str1, localArrayList4, bool, localArrayList3, localArrayList2, localArrayList1, localLoyaltyPoints);
  }
  
  public LoyaltyWalletObject[] a(int paramInt)
  {
    return new LoyaltyWalletObject[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */