package com.amazon.insights.error;

public class NullArgumentError
  extends BaseInsightsError
{
  private static final String MESSAGE_TEMPLATE = "Null value for parameter: '%s' provided to method '%s'";
  private final String parameterName;
  
  public NullArgumentError(String paramString1, String paramString2)
  {
    super(String.format("Null value for parameter: '%s' provided to method '%s'", new Object[] { paramString1, paramString2 }));
    parameterName = paramString1;
  }
  
  public String getParameterName()
  {
    return parameterName;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.error.NullArgumentError
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */