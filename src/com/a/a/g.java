package com.a.a;

public enum g
{
  MERCHANT_CANCELLED("merchant_cancelled"),  MERCHANT_SKIPPED("skipped"),  PERMISSION_DENIED("permission_denied"),  SERVICE_UNAVAILABLE("not_available"),  TIMEOUT("timeout"),  UNEXPECTED("unexpected");
  
  private String postValue;
  
  private g(String paramString)
  {
    postValue = paramString;
  }
  
  public String postValue()
  {
    return postValue;
  }
}

/* Location:
 * Qualified Name:     com.a.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */