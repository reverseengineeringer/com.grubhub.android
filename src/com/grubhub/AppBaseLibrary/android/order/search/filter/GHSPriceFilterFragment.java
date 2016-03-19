package com.grubhub.AppBaseLibrary.android.order.search.filter;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ToggleButton;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPriceFilterModel;

public class GHSPriceFilterFragment
  extends Fragment
  implements c
{
  private View a;
  private boolean[] b;
  private ToggleButton[] c;
  private boolean d;
  private boolean e;
  
  private void a()
  {
    final int i = 0;
    while (i < 5)
    {
      c[i].setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          GHSPriceFilterFragment.a(GHSPriceFilterFragment.this, i);
        }
      });
      i += 1;
    }
  }
  
  private void a(int paramInt)
  {
    int j = 0;
    int i = 0;
    boolean[] arrayOfBoolean;
    if (b[paramInt] != 0) {
      if ((paramInt + 1 >= 5) || (b[(paramInt + 1)] == 0))
      {
        arrayOfBoolean = b;
        if (b[paramInt] == 0) {
          i = 1;
        }
        arrayOfBoolean[paramInt] = i;
      }
    }
    for (;;)
    {
      a(paramInt, c[paramInt]);
      b(paramInt);
      c(paramInt);
      e = true;
      return;
      arrayOfBoolean = b;
      i = j;
      if (b[paramInt] == 0) {
        i = 1;
      }
      arrayOfBoolean[paramInt] = i;
    }
  }
  
  private void a(int paramInt, ToggleButton paramToggleButton)
  {
    paramToggleButton.setActivated(b[paramInt]);
    paramToggleButton.setSelected(b[paramInt]);
    paramToggleButton.setChecked(b[paramInt]);
  }
  
  private void b()
  {
    int i = 0;
    while (i < 5)
    {
      a(i, c[i]);
      i += 1;
    }
  }
  
  private void b(int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      b[i] = true;
      a(i, c[i]);
      i += 1;
    }
  }
  
  private void c(int paramInt)
  {
    paramInt += 1;
    while (paramInt < 5)
    {
      b[paramInt] = false;
      a(paramInt, c[paramInt]);
      paramInt += 1;
    }
  }
  
  public void a(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    boolean bool = false;
    GHSPriceFilterModel localGHSPriceFilterModel = new GHSPriceFilterModel();
    localGHSPriceFilterModel.setPriceOneSelected(b[0]);
    localGHSPriceFilterModel.setPriceTwoSelected(b[1]);
    localGHSPriceFilterModel.setPriceThreeSelected(b[2]);
    localGHSPriceFilterModel.setPriceFourSelected(b[3]);
    localGHSPriceFilterModel.setPriceFiveSelected(b[4]);
    localGHSPriceFilterModel.setHasUserSelected(e);
    paramGHSFilterSortCriteria.setPriceModel(localGHSPriceFilterModel);
    if ((paramGHSFilterSortCriteria.getHasUserSelectedRefinements()) || (e)) {
      bool = true;
    }
    paramGHSFilterSortCriteria.setHasUserSelectedRefinements(bool);
  }
  
  public void d()
  {
    b = new boolean[5];
    b();
    e = false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = new boolean[5];
    c = new ToggleButton[5];
    paramBundle = getArguments();
    d = paramBundle.getBoolean("hasPriceFilter");
    paramBundle = (GHSPriceFilterModel)paramBundle.getParcelable("savedPriceFilterModel");
    if (paramBundle != null)
    {
      b[0] = paramBundle.isPriceOneSelected();
      b[1] = paramBundle.isPriceTwoSelected();
      b[2] = paramBundle.isPriceThreeSelected();
      b[3] = paramBundle.isPriceFourSelected();
      b[4] = paramBundle.isPriceFiveSelected();
      e = paramBundle.getHasUserSelected();
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    a = paramLayoutInflater.inflate(2130903143, null);
    c[0] = ((ToggleButton)a.findViewById(2131689983));
    c[1] = ((ToggleButton)a.findViewById(2131689984));
    c[2] = ((ToggleButton)a.findViewById(2131689985));
    c[3] = ((ToggleButton)a.findViewById(2131689986));
    c[4] = ((ToggleButton)a.findViewById(2131689987));
    a();
    b();
    if (!d) {
      a.setVisibility(8);
    }
    return a;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.GHSPriceFilterFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */