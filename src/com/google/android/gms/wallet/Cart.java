package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;

public final class Cart
  implements SafeParcelable
{
  public static final Parcelable.Creator<Cart> CREATOR = new m();
  String a;
  String b;
  ArrayList<LineItem> c;
  private final int d;
  
  Cart()
  {
    d = 1;
    c = new ArrayList();
  }
  
  Cart(int paramInt, String paramString1, String paramString2, ArrayList<LineItem> paramArrayList)
  {
    d = paramInt;
    a = paramString1;
    b = paramString2;
    c = paramArrayList;
  }
  
  public static a a()
  {
    Cart localCart = new Cart();
    localCart.getClass();
    return new a(localCart, null);
  }
  
  public int b()
  {
    return d;
  }
  
  public String c()
  {
    return a;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    m.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.Cart
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */