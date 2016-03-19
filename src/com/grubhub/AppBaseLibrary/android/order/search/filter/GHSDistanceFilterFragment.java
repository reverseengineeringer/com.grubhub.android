package com.grubhub.AppBaseLibrary.android.order.search.filter;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;

public class GHSDistanceFilterFragment
  extends Fragment
  implements c
{
  private SeekBar a;
  private TextView b;
  private int c;
  private boolean d;
  
  private void a()
  {
    a.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener()
    {
      public void onProgressChanged(SeekBar paramAnonymousSeekBar, int paramAnonymousInt, boolean paramAnonymousBoolean)
      {
        paramAnonymousInt /= 100;
        if (GHSDistanceFilterFragment.a(GHSDistanceFilterFragment.this) != paramAnonymousInt)
        {
          GHSDistanceFilterFragment.a(GHSDistanceFilterFragment.this, paramAnonymousInt);
          GHSDistanceFilterFragment.b(GHSDistanceFilterFragment.this);
        }
        GHSDistanceFilterFragment.a(GHSDistanceFilterFragment.this, true);
      }
      
      public void onStartTrackingTouch(SeekBar paramAnonymousSeekBar) {}
      
      public void onStopTrackingTouch(SeekBar paramAnonymousSeekBar) {}
    });
  }
  
  private void b()
  {
    if (c > 1)
    {
      b.setText(String.format(getResources().getText(2131231898).toString(), new Object[] { Integer.toString(c) }));
      return;
    }
    if (c == 1)
    {
      b.setText(getResources().getText(2131231900));
      return;
    }
    b.setText(getResources().getText(2131231899));
  }
  
  public void a(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    boolean bool2 = true;
    if (c >= 1)
    {
      paramGHSFilterSortCriteria.setDistanceRadius(c * 1.0F);
      bool1 = bool2;
      if (!paramGHSFilterSortCriteria.getHasUserSelectedRefinements()) {
        if (!d) {
          break label54;
        }
      }
    }
    label54:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      paramGHSFilterSortCriteria.setHasUserSelectedRefinements(bool1);
      return;
      paramGHSFilterSortCriteria.setDistanceRadius(0.25F);
      break;
    }
  }
  
  public void d()
  {
    GHSFilterSortCriteria localGHSFilterSortCriteria = GHSApplication.a().b().z();
    if (localGHSFilterSortCriteria != null) {}
    for (c = ((int)localGHSFilterSortCriteria.getDefaultRadius());; c = 1)
    {
      a.setProgress(c * 100);
      b();
      d = false;
      return;
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    float f = getArguments().getFloat("savedDistanceFilterValue");
    if (f == 0.0F) {
      c = 1;
    }
    for (;;)
    {
      d = false;
      return;
      if ((f > 0.0F) && (f < 1.0F)) {
        c = 0;
      } else {
        c = ((int)f);
      }
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903121, null);
    b = ((TextView)paramLayoutInflater.findViewById(2131689838));
    a = ((SeekBar)paramLayoutInflater.findViewById(2131689841));
    a.setMax(1000);
    a.setProgress(c * 100);
    b();
    return paramLayoutInflater;
  }
  
  public void onResume()
  {
    super.onResume();
    a();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.GHSDistanceFilterFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */