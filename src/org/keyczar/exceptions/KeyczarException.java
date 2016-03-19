package org.keyczar.exceptions;

public class KeyczarException
  extends Exception
{
  private static final long serialVersionUID = 7893435087558002323L;
  
  public KeyczarException(String paramString)
  {
    super(paramString);
  }
  
  public KeyczarException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public KeyczarException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     org.keyczar.exceptions.KeyczarException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */