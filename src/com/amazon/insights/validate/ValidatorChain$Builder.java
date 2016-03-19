package com.amazon.insights.validate;

import java.util.ArrayList;
import java.util.List;

public class ValidatorChain$Builder
{
  private final List<Validator> validators = new ArrayList();
  
  public ValidatorChain build()
  {
    return new ValidatorChain(this, null);
  }
  
  public List<Validator> getValidators()
  {
    return validators;
  }
  
  public Builder withValidator(Validator paramValidator)
  {
    validators.add(paramValidator);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.validate.ValidatorChain.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */