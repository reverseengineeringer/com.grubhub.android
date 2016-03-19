package com.google.android.gms.appdatasearch;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class g
  implements Parcelable.Creator<DocumentSection>
{
  static void a(DocumentSection paramDocumentSection, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, c, false);
    c.a(paramParcel, 1000, b);
    c.a(paramParcel, 3, d, paramInt, false);
    c.a(paramParcel, 4, e);
    c.a(paramParcel, 5, f, false);
    c.a(paramParcel, i);
  }
  
  public DocumentSection a(Parcel paramParcel)
  {
    byte[] arrayOfByte = null;
    int k = a.b(paramParcel);
    int j = 0;
    int i = -1;
    RegisterSectionInfo localRegisterSectionInfo = null;
    String str = null;
    while (paramParcel.dataPosition() < k)
    {
      int m = a.a(paramParcel);
      switch (a.a(m))
      {
      default: 
        a.b(paramParcel, m);
        break;
      case 1: 
        str = a.j(paramParcel, m);
        break;
      case 1000: 
        j = a.e(paramParcel, m);
        break;
      case 3: 
        localRegisterSectionInfo = (RegisterSectionInfo)a.a(paramParcel, m, RegisterSectionInfo.CREATOR);
        break;
      case 4: 
        i = a.e(paramParcel, m);
        break;
      case 5: 
        arrayOfByte = a.m(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new b("Overread allowed size end=" + k, paramParcel);
    }
    return new DocumentSection(j, str, localRegisterSectionInfo, i, arrayOfByte);
  }
  
  public DocumentSection[] a(int paramInt)
  {
    return new DocumentSection[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */