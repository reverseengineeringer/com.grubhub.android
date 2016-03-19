package org.c.b;

import android.util.Log;
import org.c.a.c;

public class a
  extends c
{
  private static final long serialVersionUID = -1227274521521287937L;
  
  a(String paramString)
  {
    b = paramString;
  }
  
  public void a(String paramString)
  {
    Log.v(b, paramString);
  }
  
  public boolean a()
  {
    return Log.isLoggable(b, 3);
  }
  
  public void b(String paramString)
  {
    Log.d(b, paramString);
  }
  
  public void c(String paramString)
  {
    Log.i(b, paramString);
  }
  
  public void d(String paramString)
  {
    Log.w(b, paramString);
  }
  
  public void e(String paramString)
  {
    Log.e(b, paramString);
  }
}

/* Location:
 * Qualified Name:     org.c.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */