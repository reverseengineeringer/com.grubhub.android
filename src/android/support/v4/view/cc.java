package android.support.v4.view;

import android.util.Log;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class cc
{
  private static Method a;
  
  public static void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    if (a == null) {}
    try
    {
      a = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[] { Boolean.TYPE });
      a.setAccessible(true);
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        try
        {
          a.invoke(paramViewGroup, new Object[] { Boolean.valueOf(paramBoolean) });
          return;
        }
        catch (IllegalAccessException paramViewGroup)
        {
          Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", paramViewGroup);
          return;
        }
        catch (IllegalArgumentException paramViewGroup)
        {
          Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", paramViewGroup);
          return;
        }
        catch (InvocationTargetException paramViewGroup)
        {
          Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", paramViewGroup);
        }
        localNoSuchMethodException = localNoSuchMethodException;
        Log.e("ViewCompat", "Unable to find childrenDrawingOrderEnabled", localNoSuchMethodException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */