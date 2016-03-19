package android.support.v7.internal.widget;

import android.content.Context;
import android.support.v7.widget.o;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;

class an
  extends o
  implements ao
{
  private CharSequence c;
  private ListAdapter d;
  
  public an(final SpinnerCompat paramSpinnerCompat, Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramSpinnerCompat);
    a(true);
    a(0);
    a(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramSpinnerCompat.setSelection(paramAnonymousInt);
        if (paramSpinnerCompats != null) {
          paramSpinnerCompat.a(paramAnonymousView, paramAnonymousInt, an.a(an.this).getItemId(paramAnonymousInt));
        }
        a();
      }
    });
  }
  
  public void a(ListAdapter paramListAdapter)
  {
    super.a(paramListAdapter);
    d = paramListAdapter;
  }
  
  public void a(CharSequence paramCharSequence)
  {
    c = paramCharSequence;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */