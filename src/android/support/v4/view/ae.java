package android.support.v4.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater.Factory;
import android.view.View;

class ae
  implements LayoutInflater.Factory
{
  final ai a;
  
  ae(ai paramai)
  {
    a = paramai;
  }
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return a.a(null, paramString, paramContext, paramAttributeSet);
  }
  
  public String toString()
  {
    return getClass().getName() + "{" + a + "}";
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */