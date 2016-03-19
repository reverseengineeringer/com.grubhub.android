package com.google.android.gms.wallet.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.d;

public final class WalletFragmentOptions
  implements SafeParcelable
{
  public static final Parcelable.Creator<WalletFragmentOptions> CREATOR = new g();
  final int a;
  private int b;
  private int c;
  private WalletFragmentStyle d;
  private int e;
  
  private WalletFragmentOptions()
  {
    a = 1;
  }
  
  WalletFragmentOptions(int paramInt1, int paramInt2, int paramInt3, WalletFragmentStyle paramWalletFragmentStyle, int paramInt4)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    d = paramWalletFragmentStyle;
    e = paramInt4;
  }
  
  public static WalletFragmentOptions a(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, d.WalletFragmentOptions);
    int i = paramAttributeSet.getInt(d.WalletFragmentOptions_appTheme, 0);
    int j = paramAttributeSet.getInt(d.WalletFragmentOptions_environment, 1);
    int k = paramAttributeSet.getResourceId(d.WalletFragmentOptions_fragmentStyle, 0);
    int m = paramAttributeSet.getInt(d.WalletFragmentOptions_fragmentMode, 1);
    paramAttributeSet.recycle();
    paramAttributeSet = new WalletFragmentOptions();
    c = i;
    b = j;
    d = new WalletFragmentStyle().a(k);
    d.a(paramContext);
    e = m;
    return paramAttributeSet;
  }
  
  public int a()
  {
    return b;
  }
  
  public void a(Context paramContext)
  {
    if (d != null) {
      d.a(paramContext);
    }
  }
  
  public int b()
  {
    return c;
  }
  
  public WalletFragmentStyle c()
  {
    return d;
  }
  
  public int d()
  {
    return e;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    g.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.fragment.WalletFragmentOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */