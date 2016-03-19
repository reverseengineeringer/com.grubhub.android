package com.google.android.gms.appdatasearch;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class m
  implements Parcelable.Creator<UsageInfo>
{
  static void a(UsageInfo paramUsageInfo, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, b, paramInt, false);
    c.a(paramParcel, 1000, a);
    c.a(paramParcel, 2, c);
    c.a(paramParcel, 3, d);
    c.a(paramParcel, 4, e, false);
    c.a(paramParcel, 5, f, paramInt, false);
    c.a(paramParcel, 6, g);
    c.a(paramParcel, 7, h);
    c.a(paramParcel, 8, paramUsageInfo.i);
    c.a(paramParcel, i);
  }
  
  public UsageInfo a(Parcel paramParcel)
  {
    DocumentContents localDocumentContents = null;
    int i = 0;
    int n = a.b(paramParcel);
    long l = 0L;
    int j = -1;
    boolean bool = false;
    String str = null;
    int k = 0;
    DocumentId localDocumentId = null;
    int m = 0;
    while (paramParcel.dataPosition() < n)
    {
      int i1 = a.a(paramParcel);
      switch (a.a(i1))
      {
      default: 
        a.b(paramParcel, i1);
        break;
      case 1: 
        localDocumentId = (DocumentId)a.a(paramParcel, i1, DocumentId.CREATOR);
        break;
      case 1000: 
        m = a.e(paramParcel, i1);
        break;
      case 2: 
        l = a.g(paramParcel, i1);
        break;
      case 3: 
        k = a.e(paramParcel, i1);
        break;
      case 4: 
        str = a.j(paramParcel, i1);
        break;
      case 5: 
        localDocumentContents = (DocumentContents)a.a(paramParcel, i1, DocumentContents.CREATOR);
        break;
      case 6: 
        bool = a.c(paramParcel, i1);
        break;
      case 7: 
        j = a.e(paramParcel, i1);
        break;
      case 8: 
        i = a.e(paramParcel, i1);
      }
    }
    if (paramParcel.dataPosition() != n) {
      throw new b("Overread allowed size end=" + n, paramParcel);
    }
    return new UsageInfo(m, localDocumentId, l, k, str, localDocumentContents, bool, j, i);
  }
  
  public UsageInfo[] a(int paramInt)
  {
    return new UsageInfo[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */