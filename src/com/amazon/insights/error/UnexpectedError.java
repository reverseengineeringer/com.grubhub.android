package com.amazon.insights.error;

public class UnexpectedError
  extends BaseInsightsError
{
  private final Exception exception;
  
  public UnexpectedError(String paramString, Exception paramException)
  {
    super(paramString);
    exception = paramException;
  }
  
  public Exception getException()
  {
    return exception;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.error.UnexpectedError
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */