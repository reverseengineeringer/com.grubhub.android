package android.support.v4.view.a;

import android.os.Build.VERSION;
import android.os.Bundle;
import java.util.List;

public class p
{
  private static final q a = new t();
  private final Object b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new s();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new r();
      return;
    }
  }
  
  public p()
  {
    b = a.a(this);
  }
  
  public p(Object paramObject)
  {
    b = paramObject;
  }
  
  public a a(int paramInt)
  {
    return null;
  }
  
  public Object a()
  {
    return b;
  }
  
  public List<a> a(String paramString, int paramInt)
  {
    return null;
  }
  
  public boolean a(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    return false;
  }
  
  public a b(int paramInt)
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */