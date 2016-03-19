package com.google.android.gms.d;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.appdatasearch.GetRecentContextCall.Response;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.z;

public abstract class ac<T>
  extends aa
{
  protected z<T> a;
  
  public ac(z<T> paramz)
  {
    a = paramz;
  }
  
  public void a(GetRecentContextCall.Response paramResponse) {}
  
  public void a(Status paramStatus) {}
  
  public void a(Status paramStatus, ParcelFileDescriptor paramParcelFileDescriptor) {}
  
  public void a(Status paramStatus, boolean paramBoolean) {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */