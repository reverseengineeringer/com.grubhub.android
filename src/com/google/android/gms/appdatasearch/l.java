package com.google.android.gms.appdatasearch;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class l
  implements Parcelable.Creator<RegisterSectionInfo>
{
  static void a(RegisterSectionInfo paramRegisterSectionInfo, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, b, false);
    c.a(paramParcel, 1000, a);
    c.a(paramParcel, 2, c, false);
    c.a(paramParcel, 3, d);
    c.a(paramParcel, 4, e);
    c.a(paramParcel, 5, f);
    c.a(paramParcel, 6, g, false);
    c.a(paramParcel, 7, h, paramInt, false);
    c.a(paramParcel, 8, paramRegisterSectionInfo.i, false);
    c.a(paramParcel, 11, j, false);
    c.a(paramParcel, i);
  }
  
  public RegisterSectionInfo a(Parcel paramParcel)
  {
    boolean bool1 = false;
    String str1 = null;
    int k = a.b(paramParcel);
    int i = 1;
    int[] arrayOfInt = null;
    Feature[] arrayOfFeature = null;
    String str2 = null;
    boolean bool2 = false;
    String str3 = null;
    String str4 = null;
    int j = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = a.a(paramParcel);
      switch (a.a(m))
      {
      default: 
        a.b(paramParcel, m);
        break;
      case 1: 
        str4 = a.j(paramParcel, m);
        break;
      case 1000: 
        j = a.e(paramParcel, m);
        break;
      case 2: 
        str3 = a.j(paramParcel, m);
        break;
      case 3: 
        bool2 = a.c(paramParcel, m);
        break;
      case 4: 
        i = a.e(paramParcel, m);
        break;
      case 5: 
        bool1 = a.c(paramParcel, m);
        break;
      case 6: 
        str2 = a.j(paramParcel, m);
        break;
      case 7: 
        arrayOfFeature = (Feature[])a.b(paramParcel, m, Feature.CREATOR);
        break;
      case 8: 
        arrayOfInt = a.o(paramParcel, m);
        break;
      case 11: 
        str1 = a.j(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new b("Overread allowed size end=" + k, paramParcel);
    }
    return new RegisterSectionInfo(j, str4, str3, bool2, i, bool1, str2, arrayOfFeature, arrayOfInt, str1);
  }
  
  public RegisterSectionInfo[] a(int paramInt)
  {
    return new RegisterSectionInfo[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */