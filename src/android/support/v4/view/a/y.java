package android.support.v4.view.a;

import android.os.Build.VERSION;

public class y
{
  private static final ab a = new ad();
  private final Object b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new ac();
      return;
    }
    if (Build.VERSION.SDK_INT >= 15)
    {
      a = new aa();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new z();
      return;
    }
  }
  
  public y(Object paramObject)
  {
    b = paramObject;
  }
  
  public static y a()
  {
    return new y(a.a());
  }
  
  public void a(int paramInt)
  {
    a.b(b, paramInt);
  }
  
  public void a(boolean paramBoolean)
  {
    a.a(b, paramBoolean);
  }
  
  public void b(int paramInt)
  {
    a.a(b, paramInt);
  }
  
  public void c(int paramInt)
  {
    a.c(b, paramInt);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (y)paramObject;
        if (b != null) {
          break;
        }
      } while (b == null);
      return false;
    } while (b.equals(b));
    return false;
  }
  
  public int hashCode()
  {
    if (b == null) {
      return 0;
    }
    return b.hashCode();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */