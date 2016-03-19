package com.amazon.insights.validate;

public class ValidationError
{
  private final Exception exception;
  private final String reason;
  
  public ValidationError(String paramString)
  {
    this(paramString, null);
  }
  
  public ValidationError(String paramString, Exception paramException)
  {
    reason = paramString;
    exception = paramException;
  }
  
  public Exception getException()
  {
    return exception;
  }
  
  public String getReason()
  {
    return reason;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.validate.ValidationError
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */