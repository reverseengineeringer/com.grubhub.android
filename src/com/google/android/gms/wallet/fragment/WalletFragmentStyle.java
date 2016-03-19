package com.google.android.gms.wallet.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.google.android.gms.c;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.d;

public final class WalletFragmentStyle
  implements SafeParcelable
{
  public static final Parcelable.Creator<WalletFragmentStyle> CREATOR = new h();
  final int a;
  Bundle b;
  int c;
  
  public WalletFragmentStyle()
  {
    a = 1;
    b = new Bundle();
  }
  
  WalletFragmentStyle(int paramInt1, Bundle paramBundle, int paramInt2)
  {
    a = paramInt1;
    b = paramBundle;
    c = paramInt2;
  }
  
  private void a(TypedArray paramTypedArray, int paramInt, String paramString)
  {
    if (b.containsKey(paramString)) {}
    do
    {
      return;
      paramTypedArray = paramTypedArray.peekValue(paramInt);
    } while (paramTypedArray == null);
    b.putLong(paramString, a.a(paramTypedArray));
  }
  
  private void a(TypedArray paramTypedArray, int paramInt, String paramString1, String paramString2)
  {
    if ((b.containsKey(paramString1)) || (b.containsKey(paramString2))) {}
    do
    {
      return;
      paramTypedArray = paramTypedArray.peekValue(paramInt);
    } while (paramTypedArray == null);
    if ((type >= 28) && (type <= 31))
    {
      b.putInt(paramString1, data);
      return;
    }
    b.putInt(paramString2, resourceId);
  }
  
  private void b(TypedArray paramTypedArray, int paramInt, String paramString)
  {
    if (b.containsKey(paramString)) {}
    do
    {
      return;
      paramTypedArray = paramTypedArray.peekValue(paramInt);
    } while (paramTypedArray == null);
    b.putInt(paramString, data);
  }
  
  public int a(String paramString, DisplayMetrics paramDisplayMetrics, int paramInt)
  {
    if (b.containsKey(paramString)) {
      paramInt = a.a(b.getLong(paramString), paramDisplayMetrics);
    }
    return paramInt;
  }
  
  public WalletFragmentStyle a(int paramInt)
  {
    c = paramInt;
    return this;
  }
  
  public void a(Context paramContext)
  {
    if (c <= 0) {}
    for (int i = c.WalletFragmentDefaultStyle;; i = c)
    {
      paramContext = paramContext.obtainStyledAttributes(i, d.WalletFragmentStyle);
      a(paramContext, d.WalletFragmentStyle_buyButtonWidth, "buyButtonWidth");
      a(paramContext, d.WalletFragmentStyle_buyButtonHeight, "buyButtonHeight");
      b(paramContext, d.WalletFragmentStyle_buyButtonText, "buyButtonText");
      b(paramContext, d.WalletFragmentStyle_buyButtonAppearance, "buyButtonAppearance");
      b(paramContext, d.WalletFragmentStyle_maskedWalletDetailsTextAppearance, "maskedWalletDetailsTextAppearance");
      b(paramContext, d.WalletFragmentStyle_maskedWalletDetailsHeaderTextAppearance, "maskedWalletDetailsHeaderTextAppearance");
      a(paramContext, d.WalletFragmentStyle_maskedWalletDetailsBackground, "maskedWalletDetailsBackgroundColor", "maskedWalletDetailsBackgroundResource");
      b(paramContext, d.WalletFragmentStyle_maskedWalletDetailsButtonTextAppearance, "maskedWalletDetailsButtonTextAppearance");
      a(paramContext, d.WalletFragmentStyle_maskedWalletDetailsButtonBackground, "maskedWalletDetailsButtonBackgroundColor", "maskedWalletDetailsButtonBackgroundResource");
      b(paramContext, d.WalletFragmentStyle_maskedWalletDetailsLogoTextColor, "maskedWalletDetailsLogoTextColor");
      b(paramContext, d.WalletFragmentStyle_maskedWalletDetailsLogoImageType, "maskedWalletDetailsLogoImageType");
      paramContext.recycle();
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    h.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.fragment.WalletFragmentStyle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */