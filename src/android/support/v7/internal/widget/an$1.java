package android.support.v7.internal.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;

class an$1
  implements AdapterView.OnItemClickListener
{
  an$1(an paraman, SpinnerCompat paramSpinnerCompat) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    b.a.setSelection(paramInt);
    if (b.a.s != null) {
      b.a.a(paramView, paramInt, an.a(b).getItemId(paramInt));
    }
    b.a();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.an.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */