package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.d.az;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;

public class CommonWalletObject
  implements SafeParcelable
{
  public static final Parcelable.Creator<CommonWalletObject> CREATOR = new b();
  String a;
  String b;
  String c;
  String d;
  String e;
  String f;
  String g;
  String h;
  int i;
  ArrayList<WalletObjectMessage> j;
  TimeInterval k;
  ArrayList<LatLng> l;
  String m;
  String n;
  ArrayList<LabelValueRow> o;
  boolean p;
  ArrayList<UriData> q;
  ArrayList<TextModuleData> r;
  ArrayList<UriData> s;
  private final int t;
  
  CommonWalletObject()
  {
    t = 1;
    j = az.a();
    l = az.a();
    o = az.a();
    q = az.a();
    r = az.a();
    s = az.a();
  }
  
  CommonWalletObject(int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, int paramInt2, ArrayList<WalletObjectMessage> paramArrayList, TimeInterval paramTimeInterval, ArrayList<LatLng> paramArrayList1, String paramString9, String paramString10, ArrayList<LabelValueRow> paramArrayList2, boolean paramBoolean, ArrayList<UriData> paramArrayList3, ArrayList<TextModuleData> paramArrayList4, ArrayList<UriData> paramArrayList5)
  {
    t = paramInt1;
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
    e = paramString5;
    f = paramString6;
    g = paramString7;
    h = paramString8;
    i = paramInt2;
    j = paramArrayList;
    k = paramTimeInterval;
    l = paramArrayList1;
    m = paramString9;
    n = paramString10;
    o = paramArrayList2;
    p = paramBoolean;
    q = paramArrayList3;
    r = paramArrayList4;
    s = paramArrayList5;
  }
  
  public static a a()
  {
    CommonWalletObject localCommonWalletObject = new CommonWalletObject();
    localCommonWalletObject.getClass();
    return new a(localCommonWalletObject, null);
  }
  
  public int b()
  {
    return t;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    b.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.CommonWalletObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */