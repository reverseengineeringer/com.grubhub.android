package com.amazon.insights.error;

public class InvalidArgumentError
  extends BaseInsightsError
{
  private static final String MESSAGE_TEMPLATE = "Invalid parameter: '%s' provided to method '%s. %s'";
  private final String parameterName;
  
  public InvalidArgumentError(String paramString1, String paramString2, String paramString3)
  {
    super(String.format("Invalid parameter: '%s' provided to method '%s. %s'", new Object[] { paramString1, paramString2, paramString3 }));
    parameterName = paramString1;
  }
  
  public String getParameterName()
  {
    return parameterName;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.error.InvalidArgumentError
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */