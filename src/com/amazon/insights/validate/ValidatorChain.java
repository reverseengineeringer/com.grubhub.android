package com.amazon.insights.validate;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ValidatorChain
{
  private final List<Validator> validators;
  
  private ValidatorChain(ValidatorChain.Builder paramBuilder)
  {
    validators = new ArrayList(paramBuilder.getValidators());
  }
  
  public List<ValidationError> runValidation()
  {
    final ArrayList localArrayList = new ArrayList();
    Errors local1 = new Errors()
    {
      public void reject(String paramAnonymousString)
      {
        localArrayList.add(new ValidationError(paramAnonymousString));
      }
      
      public void reject(String paramAnonymousString, Exception paramAnonymousException)
      {
        localArrayList.add(new ValidationError(paramAnonymousString, paramAnonymousException));
      }
    };
    Iterator localIterator = validators.iterator();
    while (localIterator.hasNext()) {
      ((Validator)localIterator.next()).validate(local1);
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.validate.ValidatorChain
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */