package com.grubhub.AppBaseLibrary.android.utils.b;

import org.keyczar.Crypter;
import org.keyczar.exceptions.KeyczarException;

public class a
{
  private static a a;
  private Crypter b;
  
  private a()
  {
    b();
  }
  
  public static a a()
  {
    if (a == null) {
      a = new a();
    }
    return a;
  }
  
  private void a(String paramString, Exception paramException)
  {
    com.grubhub.AppBaseLibrary.android.utils.e.a.a(paramString, paramException.getMessage(), paramException);
    com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("", paramException.getClass().getSimpleName(), paramException);
  }
  
  private void b()
  {
    try
    {
      b = new Crypter(new b());
      return;
    }
    catch (KeyczarException localKeyczarException)
    {
      a("KEYCZAR_CREATION_ERROR", localKeyczarException);
    }
  }
  
  public String a(String paramString)
  {
    String str = null;
    if (paramString != null) {
      if (b == null) {
        b();
      }
    }
    try
    {
      str = b.encrypt(paramString);
      return str;
    }
    catch (KeyczarException paramString)
    {
      a("ENCRYPTION_ERROR", paramString);
      return null;
    }
    catch (Exception paramString)
    {
      a("UNKNOWN_ENCRYPTION_ERROR", paramString);
    }
    return null;
  }
  
  public String b(String paramString)
  {
    String str = null;
    if (paramString != null) {
      if (b == null) {
        b();
      }
    }
    try
    {
      str = b.decrypt(paramString);
      return str;
    }
    catch (KeyczarException paramString)
    {
      a("DECRYPTION_ERROR", paramString);
      return null;
    }
    catch (Exception paramString)
    {
      a("UNKNOWN_ENCRYPTION_ERROR", paramString);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */