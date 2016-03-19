package com.grubhub.AppBaseLibrary.android.order.search.filter;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.q;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.c.a.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFacetOption;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterFragmentsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.utils.f;
import com.grubhub.AppBaseLibrary.android.views.GHSCheckableRelativeLayout;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class GHSOptionsFilterFragment
  extends Fragment
  implements c
{
  private View a;
  private boolean b;
  private Map<String, GHSFacetOption> c;
  
  private void a()
  {
    if (c == null) {
      return;
    }
    Iterator localIterator = c.entrySet().iterator();
    while (localIterator.hasNext())
    {
      GHSFacetOption localGHSFacetOption = (GHSFacetOption)((Map.Entry)localIterator.next()).getValue();
      View localView = a.findViewWithTag(localGHSFacetOption.getId());
      if (localView != null)
      {
        localView.setActivated(localGHSFacetOption.isSelected());
        localView.setSelected(localGHSFacetOption.isSelected());
        if ((localView instanceof GHSCheckableRelativeLayout)) {
          ((GHSCheckableRelativeLayout)localView).setChecked(localGHSFacetOption.isSelected());
        }
      }
    }
    if ((c.containsKey(b.DELIVERY_OFFERED.toString())) && (((GHSFacetOption)c.get(b.DELIVERY_OFFERED.toString())).isVisible()))
    {
      a.findViewById(2131689922).setVisibility(0);
      return;
    }
    a.findViewById(2131689922).setVisibility(8);
  }
  
  private void a(ViewGroup paramViewGroup)
  {
    if ((c == null) || (c.isEmpty())) {}
    for (;;)
    {
      return;
      LayoutInflater localLayoutInflater = (LayoutInflater)getActivity().getSystemService("layout_inflater");
      Iterator localIterator = c.entrySet().iterator();
      while (localIterator.hasNext())
      {
        final GHSFacetOption localGHSFacetOption = (GHSFacetOption)((Map.Entry)localIterator.next()).getValue();
        if (localGHSFacetOption.isVisible())
        {
          View localView = localLayoutInflater.inflate(2130903108, null);
          localView.setTag(localGHSFacetOption.getId());
          int i = b(localGHSFacetOption.getId());
          if (i != 0) {
            ((ImageView)localView.findViewById(2131689733)).setImageResource(i);
          }
          ((TextView)localView.findViewById(2131689734)).setText(localGHSFacetOption.getDisplayName());
          localView.setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymousView)
            {
              GHSOptionsFilterFragment.a(GHSOptionsFilterFragment.this, localGHSFacetOption.getId());
              GHSOptionsFilterFragment.a(GHSOptionsFilterFragment.this, true);
            }
          });
          if (paramViewGroup.getChildCount() == 0) {
            paramViewGroup.addView(localView);
          } else {
            paramViewGroup.addView(localView, paramViewGroup.getChildCount() - 1);
          }
        }
      }
    }
  }
  
  private void a(String paramString)
  {
    if (f.a(paramString)) {}
    while (!c.containsKey(paramString)) {
      return;
    }
    paramString = (GHSFacetOption)c.get(paramString);
    if (!paramString.isSelected()) {}
    for (boolean bool = true;; bool = false)
    {
      paramString.setSelected(bool);
      return;
    }
  }
  
  private int b(String paramString)
  {
    paramString = b.fromString(paramString);
    if (paramString == null) {
      return 0;
    }
    switch (2.a[paramString.ordinal()])
    {
    default: 
      return 0;
    case 1: 
      return 2130837889;
    case 2: 
      return 2130837890;
    case 3: 
      return 2130837892;
    }
    return 2130837891;
  }
  
  public void a(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    GHSFilterFragmentsModel localGHSFilterFragmentsModel = paramGHSFilterSortCriteria.getFilterFragmentsModel();
    localGHSFilterFragmentsModel.setSingleValueRefinements(c);
    paramGHSFilterSortCriteria.setFilterFragmentsModel(localGHSFilterFragmentsModel);
    if ((paramGHSFilterSortCriteria.getHasUserSelectedRefinements()) || (b)) {}
    for (boolean bool = true;; bool = false)
    {
      paramGHSFilterSortCriteria.setHasUserSelectedRefinements(bool);
      return;
    }
  }
  
  public void d()
  {
    if (c != null)
    {
      Iterator localIterator = c.keySet().iterator();
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        GHSFacetOption localGHSFacetOption = (GHSFacetOption)c.get(str);
        if (b.fromString(localGHSFacetOption.getId()) == b.OPEN_NOW) {}
        for (boolean bool = true;; bool = false)
        {
          localGHSFacetOption.setSelected(bool);
          c.put(str, localGHSFacetOption);
          break;
        }
      }
    }
    a();
    b = false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getArguments();
    try
    {
      c = ((LinkedHashMap)paramBundle.getSerializable("savedOptionsFilterValues"));
      b = false;
      return;
    }
    catch (Exception paramBundle)
    {
      for (;;)
      {
        c = new LinkedHashMap();
      }
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    a = paramLayoutInflater.inflate(2130903135, null);
    a((ViewGroup)a);
    return a;
  }
  
  public void onResume()
  {
    super.onResume();
    a();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.GHSOptionsFilterFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */