package com.grubhub.AppBaseLibrary.android.order.search.filter;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.ListFragment;
import android.support.v4.app.q;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCuisine;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantListDataModel;
import com.grubhub.AppBaseLibrary.android.utils.c.e;
import com.grubhub.AppBaseLibrary.android.utils.c.f;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.views.GHSTextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class GHSCuisineFilterFragment
  extends ListFragment
  implements c
{
  private static float m;
  private static List<Character> r = new ArrayList();
  private View i;
  private ListView j;
  private a k;
  private int l;
  private int n;
  private HashMap<Character, Integer> o;
  private ArrayList<Character> p;
  private ArrayList<GHSCuisine> q;
  
  static
  {
    int i1 = 0;
    while (i1 < 26)
    {
      r.add(Character.valueOf((char)(i1 + 65)));
      i1 += 1;
    }
  }
  
  private void a(int paramInt)
  {
    int i1 = j.getFirstVisiblePosition();
    View localView = j.getChildAt(paramInt - i1);
    j.getAdapter().getView(paramInt, localView, j);
  }
  
  private void a(List<GHSCuisine> paramList)
  {
    if (paramList != null)
    {
      int i1 = paramList.size() - 1;
      while (i1 >= 0)
      {
        if (((GHSCuisine)paramList.get(i1)).getItemCount() <= 0) {
          paramList.remove(i1);
        }
        i1 -= 1;
      }
    }
  }
  
  private void e()
  {
    o = new HashMap();
    p = new ArrayList();
    int i3 = 65;
    int i2;
    for (int i1 = 0; i3 < 91; i1 = i2)
    {
      Character localCharacter = Character.valueOf((char)i3);
      i2 = i1;
      while (i1 < k.getCount())
      {
        int i4 = i1;
        if (Character.valueOf(Character.toUpperCase(k.a(i1).getDisplayName().toCharArray()[0])).equals(localCharacter))
        {
          i4 = k.getCount();
          o.put(localCharacter, Integer.valueOf(i1));
          p.add(localCharacter);
          i2 = i1;
        }
        i1 = i4 + 1;
      }
      i3 += 1;
    }
  }
  
  private void f()
  {
    if (k != null)
    {
      ArrayList localArrayList = new ArrayList(k.getCount());
      int i1 = 0;
      while (i1 < k.getCount())
      {
        GHSCuisine localGHSCuisine = k.a(i1);
        localGHSCuisine = new GHSCuisine(localGHSCuisine.getDisplayName(), localGHSCuisine.getItemCount(), localGHSCuisine.getUriQueryFragment());
        localGHSCuisine.setSelected(false);
        localArrayList.add(localGHSCuisine);
        i1 += 1;
      }
      q = localArrayList;
      a.a(k, q);
      k.notifyDataSetChanged();
    }
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    paramListView = k.a(paramInt);
    if (paramListView != null) {
      if (paramListView.isSelected()) {
        break label44;
      }
    }
    label44:
    for (boolean bool = true;; bool = false)
    {
      paramListView.setSelected(bool);
      a(paramInt);
      return;
    }
  }
  
  public void a(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    if (paramGHSFilterSortCriteria != null)
    {
      paramGHSFilterSortCriteria.setHasUserSelectedCuisines(false);
      if (q != null) {
        paramGHSFilterSortCriteria.setCuisineList(q);
      }
    }
  }
  
  public void b()
  {
    l = ((LinearLayout)i.findViewById(2131689832)).getHeight();
    double d = l / n;
    int i1 = (int)(m / d);
    if (i1 < r.size())
    {
      i1 = ((Integer)o.get(p.get(i1))).intValue();
      j.setSelection(i1);
    }
  }
  
  public void c()
  {
    double d2 = 1.0D;
    LinearLayout localLinearLayout = (LinearLayout)i.findViewById(2131689832);
    localLinearLayout.removeAllViews();
    n = p.size();
    if (n < 1) {
      return;
    }
    int i2 = (int)Math.floor(localLinearLayout.getHeight() / 20);
    int i1 = n;
    while (i1 > i2) {
      i1 /= 2;
    }
    double d1;
    if (i1 > 0) {
      d1 = n / i1;
    }
    while (d2 <= n)
    {
      String str = String.valueOf(p.get((int)d2 - 1));
      GHSTextView localGHSTextView = new GHSTextView(getActivity());
      localGHSTextView.setText(str);
      localGHSTextView.setGravity(17);
      localGHSTextView.setTextAppearance(getActivity(), 2131296801);
      localGHSTextView.setContentDescription(getString(2131231098));
      localGHSTextView.setTextColor(getResources().getColor(2131558463));
      localGHSTextView.setTextSize(11.0F);
      localGHSTextView.setTypeface(null, 1);
      localGHSTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 1.0F));
      localLinearLayout.addView(localGHSTextView);
      d2 += d1;
      continue;
      d1 = 1.0D;
    }
    l = localLinearLayout.getHeight();
    localLinearLayout.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        GHSCuisineFilterFragment.a(paramAnonymousMotionEvent.getY());
        b();
        return false;
      }
    });
  }
  
  public void d()
  {
    f();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    j = a();
    paramBundle = new View(getActivity());
    paramBundle.setLayoutParams(new AbsListView.LayoutParams(-1, (int)getActivity().getResources().getDimension(2131427528)));
    paramBundle.setBackgroundColor(-1);
    j.addFooterView(paramBundle);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject = getArguments().getParcelableArrayList("savedCuisineArray");
    paramBundle = GHSApplication.a().b().W();
    if ((paramBundle != null) && (paramBundle.getTotalResults().longValue() > 0L))
    {
      q = paramBundle.getCuisineList();
      a(q);
    }
    GHSCuisine localGHSCuisine;
    for (;;)
    {
      if (q != null) {
        Collections.sort(q, new Comparator()
        {
          public int a(GHSCuisine paramAnonymousGHSCuisine1, GHSCuisine paramAnonymousGHSCuisine2)
          {
            return paramAnonymousGHSCuisine1.getDisplayName().compareTo(paramAnonymousGHSCuisine2.getDisplayName());
          }
        });
      }
      if ((localObject == null) || (q == null)) {
        return;
      }
      paramBundle = new HashSet();
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        localGHSCuisine = (GHSCuisine)((Iterator)localObject).next();
        if (localGHSCuisine.isSelected()) {
          paramBundle.add(localGHSCuisine.getDisplayName());
        }
      }
      if (localObject != null)
      {
        q = ((ArrayList)localObject);
      }
      else if (paramBundle != null)
      {
        q = paramBundle.getCuisineList();
        a(q);
      }
    }
    localObject = q.iterator();
    while (((Iterator)localObject).hasNext())
    {
      localGHSCuisine = (GHSCuisine)((Iterator)localObject).next();
      localGHSCuisine.setSelected(paramBundle.contains(localGHSCuisine.getDisplayName()));
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    i = paramLayoutInflater.inflate(2130903119, null);
    i.findViewById(2131689831).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        d();
      }
    });
    setHasOptionsMenu(true);
    return i;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onResume()
  {
    super.onResume();
    k = new a(this, q);
    a(k);
    e();
    c();
  }
  
  public void onStart()
  {
    super.onStart();
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(e.CORE_ORDERING_EXP, f.RESTAURANT_SEARCH, "restaurants cuisine filter"));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.GHSCuisineFilterFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */