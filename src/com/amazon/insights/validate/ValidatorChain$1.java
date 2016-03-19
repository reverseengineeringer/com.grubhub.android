package com.amazon.insights.validate;

import java.util.List;

class ValidatorChain$1
  implements Errors
{
  ValidatorChain$1(ValidatorChain paramValidatorChain, List paramList) {}
  
  public void reject(String paramString)
  {
    val$validationErrors.add(new ValidationError(paramString));
  }
  
  public void reject(String paramString, Exception paramException)
  {
    val$validationErrors.add(new ValidationError(paramString, paramException));
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.validate.ValidatorChain.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */