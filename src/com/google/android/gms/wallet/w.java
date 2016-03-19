package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import java.util.ArrayList;

public class w
  implements Parcelable.Creator<MaskedWalletRequest>
{
  static void a(MaskedWalletRequest paramMaskedWalletRequest, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, paramMaskedWalletRequest.b());
    c.a(paramParcel, 2, a, false);
    c.a(paramParcel, 3, b);
    c.a(paramParcel, 4, c);
    c.a(paramParcel, 5, d);
    c.a(paramParcel, 6, e, false);
    c.a(paramParcel, 7, f, false);
    c.a(paramParcel, 8, g, false);
    c.a(paramParcel, 9, h, paramInt, false);
    c.a(paramParcel, 10, paramMaskedWalletRequest.i);
    c.a(paramParcel, 11, j);
    c.a(paramParcel, 12, k, paramInt, false);
    c.a(paramParcel, 13, l);
    c.a(paramParcel, 14, m);
    c.b(paramParcel, 15, n, false);
    c.a(paramParcel, 17, p, false);
    c.a(paramParcel, 16, o, paramInt, false);
    c.a(paramParcel, i);
  }
  
  public MaskedWalletRequest a(Parcel paramParcel)
  {
    int j = a.b(paramParcel);
    int i = 0;
    String str4 = null;
    boolean bool7 = false;
    boolean bool6 = false;
    boolean bool5 = false;
    String str3 = null;
    String str2 = null;
    String str1 = null;
    Cart localCart = null;
    boolean bool4 = false;
    boolean bool3 = false;
    CountrySpecification[] arrayOfCountrySpecification = null;
    boolean bool2 = true;
    boolean bool1 = true;
    ArrayList localArrayList2 = null;
    PaymentMethodTokenizationParameters localPaymentMethodTokenizationParameters = null;
    ArrayList localArrayList1 = null;
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
        str4 = a.j(paramParcel, k);
        break;
      case 3: 
        bool7 = a.c(paramParcel, k);
        break;
      case 4: 
        bool6 = a.c(paramParcel, k);
        break;
      case 5: 
        bool5 = a.c(paramParcel, k);
        break;
      case 6: 
        str3 = a.j(paramParcel, k);
        break;
      case 7: 
        str2 = a.j(paramParcel, k);
        break;
      case 8: 
        str1 = a.j(paramParcel, k);
        break;
      case 9: 
        localCart = (Cart)a.a(paramParcel, k, Cart.CREATOR);
        break;
      case 10: 
        bool4 = a.c(paramParcel, k);
        break;
      case 11: 
        bool3 = a.c(paramParcel, k);
        break;
      case 12: 
        arrayOfCountrySpecification = (CountrySpecification[])a.b(paramParcel, k, CountrySpecification.CREATOR);
        break;
      case 13: 
        bool2 = a.c(paramParcel, k);
        break;
      case 14: 
        bool1 = a.c(paramParcel, k);
        break;
      case 15: 
        localArrayList2 = a.c(paramParcel, k, com.google.android.gms.identity.intents.model.CountrySpecification.CREATOR);
        break;
      case 17: 
        localArrayList1 = a.q(paramParcel, k);
        break;
      case 16: 
        localPaymentMethodTokenizationParameters = (PaymentMethodTokenizationParameters)a.a(paramParcel, k, PaymentMethodTokenizationParameters.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new MaskedWalletRequest(i, str4, bool7, bool6, bool5, str3, str2, str1, localCart, bool4, bool3, arrayOfCountrySpecification, bool2, bool1, localArrayList2, localPaymentMethodTokenizationParameters, localArrayList1);
  }
  
  public MaskedWalletRequest[] a(int paramInt)
  {
    return new MaskedWalletRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */