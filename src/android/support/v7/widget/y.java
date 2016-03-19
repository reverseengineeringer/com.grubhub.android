package android.support.v7.widget;

import android.os.ResultReceiver;
import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;
import java.lang.reflect.Method;

class y
{
  private Method a;
  private Method b;
  private Method c;
  private Method d;
  
  y()
  {
    try
    {
      a = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
      a.setAccessible(true);
      try
      {
        b = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
        b.setAccessible(true);
        try
        {
          c = AutoCompleteTextView.class.getMethod("ensureImeVisible", new Class[] { Boolean.TYPE });
          c.setAccessible(true);
          try
          {
            d = InputMethodManager.class.getMethod("showSoftInputUnchecked", new Class[] { Integer.TYPE, ResultReceiver.class });
            d.setAccessible(true);
            return;
          }
          catch (NoSuchMethodException localNoSuchMethodException1) {}
        }
        catch (NoSuchMethodException localNoSuchMethodException2)
        {
          for (;;) {}
        }
      }
      catch (NoSuchMethodException localNoSuchMethodException3)
      {
        for (;;) {}
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException4)
    {
      for (;;) {}
    }
  }
  
  void a(AutoCompleteTextView paramAutoCompleteTextView)
  {
    if (a != null) {}
    try
    {
      a.invoke(paramAutoCompleteTextView, new Object[0]);
      return;
    }
    catch (Exception paramAutoCompleteTextView) {}
  }
  
  void a(AutoCompleteTextView paramAutoCompleteTextView, boolean paramBoolean)
  {
    if (c != null) {}
    try
    {
      c.invoke(paramAutoCompleteTextView, new Object[] { Boolean.valueOf(paramBoolean) });
      return;
    }
    catch (Exception paramAutoCompleteTextView) {}
  }
  
  void b(AutoCompleteTextView paramAutoCompleteTextView)
  {
    if (b != null) {}
    try
    {
      b.invoke(paramAutoCompleteTextView, new Object[0]);
      return;
    }
    catch (Exception paramAutoCompleteTextView) {}
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */