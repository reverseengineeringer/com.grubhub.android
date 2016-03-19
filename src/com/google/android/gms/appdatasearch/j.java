package com.google.android.gms.appdatasearch;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;
import java.util.List;

public class j
  implements Parcelable.Creator<GetRecentContextCall.Response>
{
  static void a(GetRecentContextCall.Response paramResponse, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1000, d);
    c.a(paramParcel, 1, a, paramInt, false);
    c.b(paramParcel, 2, b, false);
    c.a(paramParcel, 3, c, false);
    c.a(paramParcel, i);
  }
  
  public GetRecentContextCall.Response a(Parcel paramParcel)
  {
    String[] arrayOfString = null;
    int j = a.b(paramParcel);
    int i = 0;
    Object localObject2 = null;
    Object localObject1 = null;
    if (paramParcel.dataPosition() < j)
    {
      int k = a.a(paramParcel);
      Object localObject3;
      switch (a.a(k))
      {
      default: 
        a.b(paramParcel, k);
        localObject3 = localObject2;
        localObject2 = localObject1;
        localObject1 = localObject3;
      }
      for (;;)
      {
        localObject3 = localObject2;
        localObject2 = localObject1;
        localObject1 = localObject3;
        break;
        i = a.e(paramParcel, k);
        localObject3 = localObject1;
        localObject1 = localObject2;
        localObject2 = localObject3;
        continue;
        localObject3 = (Status)a.a(paramParcel, k, Status.CREATOR);
        localObject1 = localObject2;
        localObject2 = localObject3;
        continue;
        localObject3 = a.c(paramParcel, k, UsageInfo.CREATOR);
        localObject2 = localObject1;
        localObject1 = localObject3;
        continue;
        arrayOfString = a.p(paramParcel, k);
        localObject3 = localObject1;
        localObject1 = localObject2;
        localObject2 = localObject3;
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new GetRecentContextCall.Response(i, (Status)localObject1, (List)localObject2, arrayOfString);
  }
  
  public GetRecentContextCall.Response[] a(int paramInt)
  {
    return new GetRecentContextCall.Response[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */