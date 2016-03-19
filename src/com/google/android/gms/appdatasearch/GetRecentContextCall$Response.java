package com.google.android.gms.appdatasearch;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.v;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

public class GetRecentContextCall$Response
  implements v, SafeParcelable
{
  public static final j CREATOR = new j();
  public Status a;
  public List<UsageInfo> b;
  public String[] c;
  final int d;
  
  public GetRecentContextCall$Response()
  {
    d = 1;
  }
  
  GetRecentContextCall$Response(int paramInt, Status paramStatus, List<UsageInfo> paramList, String[] paramArrayOfString)
  {
    d = paramInt;
    a = paramStatus;
    b = paramList;
    c = paramArrayOfString;
  }
  
  public Status a()
  {
    return a;
  }
  
  public int describeContents()
  {
    j localj = CREATOR;
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    j localj = CREATOR;
    j.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.GetRecentContextCall.Response
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */