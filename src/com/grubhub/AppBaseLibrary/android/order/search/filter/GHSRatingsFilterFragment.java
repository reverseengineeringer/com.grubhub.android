package com.grubhub.AppBaseLibrary.android.order.search.filter;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSRatingsFilterModel;

public class GHSRatingsFilterFragment
  extends Fragment
  implements c
{
  private View a;
  private boolean[] b;
  private View[] c;
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
          GHSRatingsFilterFragment.a(GHSRatingsFilterFragment.this, i, paramAnonymousView);
        }
      });
      i += 1;
    }
  }
  
  private void a(int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      b[i] = true;
      c(i, c[i]);
      i += 1;
    }
  }
  
  private void a(int paramInt, View paramView)
  {
    if (b[paramInt] != 0) {
      if ((paramInt + 1 >= 5) || (b[(paramInt + 1)] == 0)) {
        b(paramInt, paramView);
      }
    }
    for (;;)
    {
      a(paramInt);
      b(paramInt);
      e = true;
      return;
      b(paramInt, paramView);
    }
  }
  
  private void b()
  {
    int i = 0;
    while (i < 5)
    {
      c(i, c[i]);
      i += 1;
    }
  }
  
  private void b(int paramInt)
  {
    paramInt += 1;
    while (paramInt < 5)
    {
      b[paramInt] = false;
      c(paramInt, c[paramInt]);
      paramInt += 1;
    }
  }
  
  private void b(int paramInt, View paramView)
  {
    boolean[] arrayOfBoolean = b;
    if (b[paramInt] == 0) {}
    for (int i = 1;; i = 0)
    {
      arrayOfBoolean[paramInt] = i;
      c(paramInt, paramView);
      return;
    }
  }
  
  private void c(int paramInt, View paramView)
  {
    paramView.setActivated(b[paramInt]);
    paramView.setSelected(b[paramInt]);
  }
  
  public void a(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    boolean bool = false;
    GHSRatingsFilterModel localGHSRatingsFilterModel = new GHSRatingsFilterModel();
    localGHSRatingsFilterModel.setRatingsOneSelected(b[0]);
    localGHSRatingsFilterModel.setRatingsTwoSelected(b[1]);
    localGHSRatingsFilterModel.setRatingsThreeSelected(b[2]);
    localGHSRatingsFilterModel.setRatingsFourSelected(b[3]);
    localGHSRatingsFilterModel.setRatingsFiveSelected(b[4]);
    localGHSRatingsFilterModel.setHasUserSelected(e);
    paramGHSFilterSortCriteria.setRatingsModel(localGHSRatingsFilterModel);
    if ((paramGHSFilterSortCriteria.getHasUserSelectedRefinements()) || (e)) {
      bool = true;
    }
    paramGHSFilterSortCriteria.setHasUserSelectedRefinements(bool);
  }
  
  public void d()
  {
    int i = 0;
    while (i < 5)
    {
      b[i] = false;
      i += 1;
    }
    b();
    e = false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = new boolean[5];
    c = new View[5];
    paramBundle = getArguments();
    d = paramBundle.getBoolean("hasRatingsFilter");
    paramBundle = (GHSRatingsFilterModel)paramBundle.getParcelable("savedRatingsFilterModel");
    if (paramBundle != null)
    {
      b[0] = paramBundle.isRatingsOneSelected();
      b[1] = paramBundle.isRatingsTwoSelected();
      b[2] = paramBundle.isRatingsThreeSelected();
      b[3] = paramBundle.isRatingsFourSelected();
      b[4] = paramBundle.isRatingsFiveSelected();
      e = paramBundle.getHasUserSelected();
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    a = paramLayoutInflater.inflate(2130903144, null);
    c[0] = a.findViewById(2131689989);
    c[1] = a.findViewById(2131689990);
    c[2] = a.findViewById(2131689991);
    c[3] = a.findViewById(2131689992);
    c[4] = a.findViewById(2131689993);
    a();
    b();
    if (!d) {
      a.setVisibility(8);
    }
    return a;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.GHSRatingsFilterFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */