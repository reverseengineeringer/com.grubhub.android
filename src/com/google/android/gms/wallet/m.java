package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import java.util.ArrayList;

public class m
  implements Parcelable.Creator<Cart>
{
  static void a(Cart paramCart, Parcel paramParcel, int paramInt)
  {
    paramInt = c.a(paramParcel);
    c.a(paramParcel, 1, paramCart.b());
    c.a(paramParcel, 2, a, false);
    c.a(paramParcel, 3, b, false);
    c.b(paramParcel, 4, c, false);
    c.a(paramParcel, paramInt);
  }
  
  public Cart a(Parcel paramParcel)
  {
    String str2 = null;
    int j = a.b(paramParcel);
    int i = 0;
    ArrayList localArrayList = new ArrayList();
    String str1 = null;
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
        str1 = a.j(paramParcel, k);
        break;
      case 3: 
        str2 = a.j(paramParcel, k);
        break;
      case 4: 
        localArrayList = a.c(paramParcel, k, LineItem.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new Cart(i, str1, str2, localArrayList);
  }
  
  public Cart[] a(int paramInt)
  {
    return new Cart[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */