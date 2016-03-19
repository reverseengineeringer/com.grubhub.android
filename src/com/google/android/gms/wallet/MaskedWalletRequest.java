package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;

public final class MaskedWalletRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<MaskedWalletRequest> CREATOR = new w();
  String a;
  boolean b;
  boolean c;
  boolean d;
  String e;
  String f;
  String g;
  Cart h;
  boolean i;
  boolean j;
  CountrySpecification[] k;
  boolean l;
  boolean m;
  ArrayList<com.google.android.gms.identity.intents.model.CountrySpecification> n;
  PaymentMethodTokenizationParameters o;
  ArrayList<Integer> p;
  private final int q;
  
  MaskedWalletRequest()
  {
    q = 3;
    l = true;
    m = true;
  }
  
  MaskedWalletRequest(int paramInt, String paramString1, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString2, String paramString3, String paramString4, Cart paramCart, boolean paramBoolean4, boolean paramBoolean5, CountrySpecification[] paramArrayOfCountrySpecification, boolean paramBoolean6, boolean paramBoolean7, ArrayList<com.google.android.gms.identity.intents.model.CountrySpecification> paramArrayList, PaymentMethodTokenizationParameters paramPaymentMethodTokenizationParameters, ArrayList<Integer> paramArrayList1)
  {
    q = paramInt;
    a = paramString1;
    b = paramBoolean1;
    c = paramBoolean2;
    d = paramBoolean3;
    e = paramString2;
    f = paramString3;
    g = paramString4;
    h = paramCart;
    i = paramBoolean4;
    j = paramBoolean5;
    k = paramArrayOfCountrySpecification;
    l = paramBoolean6;
    m = paramBoolean7;
    n = paramArrayList;
    o = paramPaymentMethodTokenizationParameters;
    p = paramArrayList1;
  }
  
  public static d a()
  {
    MaskedWalletRequest localMaskedWalletRequest = new MaskedWalletRequest();
    localMaskedWalletRequest.getClass();
    return new d(localMaskedWalletRequest, null);
  }
  
  public int b()
  {
    return q;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    w.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.MaskedWalletRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */