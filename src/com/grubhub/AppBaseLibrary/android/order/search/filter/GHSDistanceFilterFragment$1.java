package com.grubhub.AppBaseLibrary.android.order.search.filter;

import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;

class GHSDistanceFilterFragment$1
  implements SeekBar.OnSeekBarChangeListener
{
  GHSDistanceFilterFragment$1(GHSDistanceFilterFragment paramGHSDistanceFilterFragment) {}
  
  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    paramInt /= 100;
    if (GHSDistanceFilterFragment.a(a) != paramInt)
    {
      GHSDistanceFilterFragment.a(a, paramInt);
      GHSDistanceFilterFragment.b(a);
    }
    GHSDistanceFilterFragment.a(a, true);
  }
  
  public void onStartTrackingTouch(SeekBar paramSeekBar) {}
  
  public void onStopTrackingTouch(SeekBar paramSeekBar) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.GHSDistanceFilterFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */