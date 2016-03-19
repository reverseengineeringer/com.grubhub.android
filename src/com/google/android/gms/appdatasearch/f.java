package com.google.android.gms.appdatasearch;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class f
  implements Parcelable.Creator<DocumentId>
{
  static void a(DocumentId paramDocumentId, Parcel paramParcel, int paramInt)
  {
    paramInt = c.a(paramParcel);
    c.a(paramParcel, 1, b, false);
    c.a(paramParcel, 1000, a);
    c.a(paramParcel, 2, c, false);
    c.a(paramParcel, 3, d, false);
    c.a(paramParcel, paramInt);
  }
  
  public DocumentId a(Parcel paramParcel)
  {
    String str3 = null;
    int j = a.b(paramParcel);
    int i = 0;
    String str2 = null;
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
        str1 = a.j(paramParcel, k);
        break;
      case 1000: 
        i = a.e(paramParcel, k);
        break;
      case 2: 
        str2 = a.j(paramParcel, k);
        break;
      case 3: 
        str3 = a.j(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new DocumentId(i, str1, str2, str3);
  }
  
  public DocumentId[] a(int paramInt)
  {
    return new DocumentId[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */