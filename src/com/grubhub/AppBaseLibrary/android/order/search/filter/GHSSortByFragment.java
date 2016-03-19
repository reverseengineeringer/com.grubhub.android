package com.grubhub.AppBaseLibrary.android.order.search.filter;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.a.a;
import com.grubhub.AppBaseLibrary.android.c.a.d;
import com.grubhub.AppBaseLibrary.android.c.a.e;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import java.util.List;

public class GHSSortByFragment
  extends Fragment
  implements c
{
  private Activity a;
  private View b;
  private View c;
  private ListView d;
  private a e;
  private e f;
  private boolean g;
  private boolean h;
  private boolean i;
  private boolean j;
  private List<String> k;
  
  private void a()
  {
    d = ((ListView)b.findViewById(2131690121));
    d.setAdapter(e);
    c = b.findViewById(2131690116);
    d.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = ((TextView)paramAnonymousView.findViewById(2131689742)).getText().toString();
        ((TextView)GHSSortByFragment.a(GHSSortByFragment.this).findViewById(2131690119)).setText(paramAnonymousAdapterView);
        GHSSortByFragment.b(GHSSortByFragment.this).a(paramAnonymousInt);
        GHSSortByFragment.c(GHSSortByFragment.this).performClick();
        GHSSortByFragment.a(GHSSortByFragment.this, true);
      }
    });
    c.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = (ImageView)paramAnonymousView.findViewById(2131690120);
        if (!GHSSortByFragment.d(GHSSortByFragment.this))
        {
          GHSSortByFragment.e(GHSSortByFragment.this).setVisibility(0);
          GHSSortByFragment.b(GHSSortByFragment.this, true);
          paramAnonymousView.setImageResource(2130837682);
          return;
        }
        GHSSortByFragment.e(GHSSortByFragment.this).setVisibility(8);
        GHSSortByFragment.b(GHSSortByFragment.this, false);
        paramAnonymousView.setImageResource(2130837732);
      }
    });
    b();
  }
  
  private void b()
  {
    int m = f.a();
    if (m != -1)
    {
      d.setItemChecked(m, true);
      ((TextView)b.findViewById(2131690119)).setText(((com.grubhub.AppBaseLibrary.android.c.a.c)f.c().get(m)).a());
    }
  }
  
  public void a(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    if (f.a() == -1) {
      return;
    }
    paramGHSFilterSortCriteria.setCurrentSortOption(((com.grubhub.AppBaseLibrary.android.c.a.c)f.c().get(f.a())).b());
    paramGHSFilterSortCriteria.setHasUserSelectedSort(i);
  }
  
  public void d()
  {
    if (h) {
      f.a(d.RELEVANCE.toString());
    }
    for (;;)
    {
      b();
      i = false;
      return;
      if (j) {
        f.a(d.DISTANCE.toString());
      } else {
        f.a(d.DEFAULT.toString());
      }
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    a = paramActivity;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getArguments();
    h = paramBundle.getBoolean("hasQueryString", false);
    j = paramBundle.getBoolean("isPickup", false);
    k = paramBundle.getStringArrayList("availableSortIds");
    f = new e(k);
    paramBundle = paramBundle.getString("savedSortByValue");
    if (!TextUtils.isEmpty(paramBundle)) {
      f.a(paramBundle);
    }
    if (f.b()) {
      e = new a(a, f.c());
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    b = paramLayoutInflater.inflate(2130903159, null);
    return b;
  }
  
  public void onResume()
  {
    super.onResume();
    if (f.b())
    {
      a();
      b.setVisibility(0);
      return;
    }
    b.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.GHSSortByFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */