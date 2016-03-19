package com.amazon.insights.core.io;

import java.io.IOException;

public class DecryptionException
  extends IOException
{
  private static final long serialVersionUID = 8074231369442337688L;
  
  public DecryptionException(Exception paramException)
  {
    super(paramException.toString());
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.io.DecryptionException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */