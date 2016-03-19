package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.LayoutInflater;

public class y
{
  static final z a = new aa();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new ac();
      return;
    }
    if (i >= 11)
    {
      a = new ab();
      return;
    }
  }
  
  public static void a(LayoutInflater paramLayoutInflater, ai paramai)
  {
    a.a(paramLayoutInflater, paramai);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */