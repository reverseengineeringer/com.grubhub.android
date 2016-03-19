package android.support.v7.internal.view;

import android.view.InflateException;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import java.lang.reflect.Method;

class f
  implements MenuItem.OnMenuItemClickListener
{
  private static final Class<?>[] a = { MenuItem.class };
  private Object b;
  private Method c;
  
  public f(Object paramObject, String paramString)
  {
    b = paramObject;
    Class localClass = paramObject.getClass();
    try
    {
      c = localClass.getMethod(paramString, a);
      return;
    }
    catch (Exception paramObject)
    {
      paramString = new InflateException("Couldn't resolve menu item onClick handler " + paramString + " in class " + localClass.getName());
      paramString.initCause((Throwable)paramObject);
      throw paramString;
    }
  }
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    try
    {
      if (c.getReturnType() == Boolean.TYPE) {
        return ((Boolean)c.invoke(b, new Object[] { paramMenuItem })).booleanValue();
      }
      c.invoke(b, new Object[] { paramMenuItem });
      return true;
    }
    catch (Exception paramMenuItem)
    {
      throw new RuntimeException(paramMenuItem);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */