package org.keyczar.exceptions;

public class Base64DecodingException
  extends KeyczarException
{
  private static final long serialVersionUID = -2574909128694204517L;
  
  public Base64DecodingException(String paramString)
  {
    super(paramString);
  }
  
  public Base64DecodingException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     org.keyczar.exceptions.Base64DecodingException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */