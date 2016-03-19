package com.braintreepayments.api.exceptions;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ErrorWithResponse$BraintreeError
  implements Parcelable
{
  public static final Parcelable.Creator<BraintreeError> CREATOR = new Parcelable.Creator()
  {
    public ErrorWithResponse.BraintreeError a(Parcel paramAnonymousParcel)
    {
      return new ErrorWithResponse.BraintreeError(paramAnonymousParcel, null);
    }
    
    public ErrorWithResponse.BraintreeError[] a(int paramAnonymousInt)
    {
      return new ErrorWithResponse.BraintreeError[paramAnonymousInt];
    }
  };
  private String a;
  private String b;
  private List<BraintreeError> c = new ArrayList();
  
  public ErrorWithResponse$BraintreeError() {}
  
  private ErrorWithResponse$BraintreeError(Parcel paramParcel)
  {
    c = new ArrayList();
    paramParcel.readList(c, ArrayList.class.getClassLoader());
    a = paramParcel.readString();
    b = paramParcel.readString();
  }
  
  public BraintreeError a(String paramString)
  {
    if (c != null)
    {
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        BraintreeError localBraintreeError = (BraintreeError)localIterator.next();
        if (a.equals(paramString)) {
          return localBraintreeError;
        }
      }
    }
    return null;
  }
  
  public String a()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("BraintreeError for ").append(a).append(": ").append(b).append(" -> ");
    if (c != null) {}
    for (String str = c.toString();; str = "") {
      return str;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeList(c);
    paramParcel.writeString(a);
    paramParcel.writeString(b);
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.exceptions.ErrorWithResponse.BraintreeError
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */