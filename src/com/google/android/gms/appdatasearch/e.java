package com.google.android.gms.appdatasearch;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class e
  implements Parcelable.Creator<DocumentContents>
{
  static void a(DocumentContents paramDocumentContents, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, b, paramInt, false);
    c.a(paramParcel, 1000, a);
    c.a(paramParcel, 2, c, false);
    c.a(paramParcel, 3, d);
    c.a(paramParcel, 4, e, paramInt, false);
    c.a(paramParcel, i);
  }
  
  public DocumentContents a(Parcel paramParcel)
  {
    boolean bool = false;
    Account localAccount = null;
    int j = a.b(paramParcel);
    String str = null;
    DocumentSection[] arrayOfDocumentSection = null;
    int i = 0;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.a(paramParcel);
      switch (a.a(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        arrayOfDocumentSection = (DocumentSection[])a.b(paramParcel, k, DocumentSection.CREATOR);
        break;
      case 1000: 
        i = a.e(paramParcel, k);
        break;
      case 2: 
        str = a.j(paramParcel, k);
        break;
      case 3: 
        bool = a.c(paramParcel, k);
        break;
      case 4: 
        localAccount = (Account)a.a(paramParcel, k, Account.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new DocumentContents(i, arrayOfDocumentSection, str, bool, localAccount);
  }
  
  public DocumentContents[] a(int paramInt)
  {
    return new DocumentContents[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */