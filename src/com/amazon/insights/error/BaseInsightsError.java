package com.amazon.insights.error;

class BaseInsightsError
  implements InsightsError
{
  private final String message;
  
  public BaseInsightsError(String paramString)
  {
    message = paramString;
  }
  
  public String getMessage()
  {
    return message;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.error.BaseInsightsError
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */