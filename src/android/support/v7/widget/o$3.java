package android.support.v7.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

class o$3
  implements AdapterView.OnItemSelectedListener
{
  o$3(o paramo) {}
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt != -1)
    {
      paramAdapterView = o.a(a);
      if (paramAdapterView != null) {
        p.a(paramAdapterView, false);
      }
    }
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     android.support.v7.widget.o.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */