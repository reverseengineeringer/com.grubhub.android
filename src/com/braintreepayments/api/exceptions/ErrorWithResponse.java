package com.braintreepayments.api.exceptions;

import com.google.gson.Gson;
import java.util.Iterator;
import java.util.List;

public final class ErrorWithResponse
  extends Exception
{
  private final int a;
  private final String b;
  private final List<ErrorWithResponse.BraintreeError> c;
  
  public ErrorWithResponse(int paramInt, ErrorWithResponse.BraintreeErrors paramBraintreeErrors)
  {
    a = paramInt;
    if (paramBraintreeErrors != null)
    {
      c = paramBraintreeErrors.b();
      b = paramBraintreeErrors.a();
      return;
    }
    c = null;
    b = "Parsing error response failed";
  }
  
  public ErrorWithResponse(int paramInt, String paramString)
  {
    this(paramInt, (ErrorWithResponse.BraintreeErrors)new Gson().fromJson(paramString, ErrorWithResponse.BraintreeErrors.class));
  }
  
  public ErrorWithResponse.BraintreeError a(String paramString)
  {
    if (c != null)
    {
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        ErrorWithResponse.BraintreeError localBraintreeError = (ErrorWithResponse.BraintreeError)localIterator.next();
        if (ErrorWithResponse.BraintreeError.a(localBraintreeError).equals(paramString)) {
          return localBraintreeError;
        }
      }
    }
    return null;
  }
  
  public String getMessage()
  {
    return b;
  }
  
  public String toString()
  {
    return "ErrorWithResponse (" + a + "): " + b + "\n" + c.toString();
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.exceptions.ErrorWithResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */