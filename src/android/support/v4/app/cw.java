package android.support.v4.app;

import android.os.Bundle;

public final class cw
{
  private final String a;
  private CharSequence b;
  private CharSequence[] c;
  private boolean d = true;
  private Bundle e = new Bundle();
  
  public cw(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Result key can't be null");
    }
    a = paramString;
  }
  
  public cv a()
  {
    return new cv(a, b, c, d, e);
  }
  
  public cw a(Bundle paramBundle)
  {
    if (paramBundle != null) {
      e.putAll(paramBundle);
    }
    return this;
  }
  
  public cw a(CharSequence paramCharSequence)
  {
    b = paramCharSequence;
    return this;
  }
  
  public cw a(CharSequence[] paramArrayOfCharSequence)
  {
    c = paramArrayOfCharSequence;
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.cw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */