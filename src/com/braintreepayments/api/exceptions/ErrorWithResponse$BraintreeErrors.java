package com.braintreepayments.api.exceptions;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public final class ErrorWithResponse$BraintreeErrors
  implements Parcelable
{
  public static final Parcelable.Creator<BraintreeErrors> CREATOR = new Parcelable.Creator()
  {
    public ErrorWithResponse.BraintreeErrors a(Parcel paramAnonymousParcel)
    {
      return new ErrorWithResponse.BraintreeErrors(paramAnonymousParcel, null);
    }
    
    public ErrorWithResponse.BraintreeErrors[] a(int paramAnonymousInt)
    {
      return new ErrorWithResponse.BraintreeErrors[paramAnonymousInt];
    }
  };
  private ErrorWithResponse.BraintreeError a;
  private List<ErrorWithResponse.BraintreeError> b = new ArrayList();
  
  public ErrorWithResponse$BraintreeErrors() {}
  
  private ErrorWithResponse$BraintreeErrors(Parcel paramParcel)
  {
    paramParcel.readTypedList(b, ErrorWithResponse.BraintreeError.CREATOR);
    a = ((ErrorWithResponse.BraintreeError)paramParcel.readParcelable(ErrorWithResponse.BraintreeError.class.getClassLoader()));
  }
  
  protected String a()
  {
    if (a != null) {
      return a.a();
    }
    return "Parsing error response failed";
  }
  
  protected List<ErrorWithResponse.BraintreeError> b()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(b);
    paramParcel.writeParcelable(a, 0);
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.exceptions.ErrorWithResponse.BraintreeErrors
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */