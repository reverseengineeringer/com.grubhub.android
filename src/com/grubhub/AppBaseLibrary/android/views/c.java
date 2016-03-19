package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.location.Location;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filter.FilterResults;
import android.widget.Filterable;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.net.a;
import com.grubhub.AppBaseLibrary.android.utils.e.b;
import java.util.ArrayList;
import java.util.Locale;

class c
  extends BaseAdapter
  implements Filterable
{
  private Context b;
  private boolean c;
  private ArrayList<String> d;
  
  public c(GHSAddressBar paramGHSAddressBar, Context paramContext)
  {
    b = paramContext;
  }
  
  public String a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < d.size())) {
      return (String)d.get(paramInt);
    }
    return null;
  }
  
  public void a()
  {
    c = true;
  }
  
  public boolean areAllItemsEnabled()
  {
    return false;
  }
  
  public int getCount()
  {
    return d.size() + 1;
  }
  
  public Filter getFilter()
  {
    new Filter()
    {
      protected Filter.FilterResults performFiltering(CharSequence paramAnonymousCharSequence)
      {
        String str = null;
        Filter.FilterResults localFilterResults;
        Object localObject;
        Double localDouble;
        if (!c.a(c.this))
        {
          localFilterResults = new Filter.FilterResults();
          if (paramAnonymousCharSequence != null)
          {
            localObject = GHSAddressBar.n(a);
            if (localObject == null) {
              break label196;
            }
            localDouble = Double.valueOf(((Location)localObject).getLatitude());
            localObject = Double.valueOf(((Location)localObject).getLongitude());
            str = localDouble + "," + localObject;
          }
        }
        for (;;)
        {
          paramAnonymousCharSequence = paramAnonymousCharSequence.toString().toLowerCase(Locale.US);
          c.a(c.this, GHSApplication.a(c.b(c.this)).a(paramAnonymousCharSequence, localDouble, (Double)localObject));
          if ((c.c(c.this) == null) || (c.c(c.this).size() == 0)) {
            b.a(c.c(c.this), paramAnonymousCharSequence, str);
          }
          values = c.c(c.this);
          count = c.c(c.this).size();
          return localFilterResults;
          c.a(c.this, false);
          return null;
          label196:
          localObject = null;
          localDouble = null;
        }
      }
      
      protected void publishResults(CharSequence paramAnonymousCharSequence, Filter.FilterResults paramAnonymousFilterResults)
      {
        if ((paramAnonymousFilterResults != null) && (count > 0))
        {
          notifyDataSetChanged();
          return;
        }
        notifyDataSetInvalidated();
      }
    };
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public int getItemViewType(int paramInt)
  {
    if (paramInt < d.size()) {
      return 0;
    }
    return 1;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject = paramViewGroup.getContext();
    if (getItemViewType(paramInt) == 0)
    {
      paramViewGroup = paramView;
      if (paramView == null) {
        paramViewGroup = LayoutInflater.from((Context)localObject).inflate(2130903078, null);
      }
      paramView = a(paramInt);
      localObject = paramViewGroup.findViewById(2131689641);
      if ((GHSAddressBar.m(a) != null) && (GHSAddressBar.m(a).contains(paramView)))
      {
        paramInt = 0;
        ((View)localObject).setVisibility(paramInt);
        ((TextView)paramViewGroup.findViewById(2131689642)).setText(paramView);
      }
    }
    do
    {
      return paramViewGroup;
      paramInt = 8;
      break;
      paramViewGroup = paramView;
    } while (paramView != null);
    return LayoutInflater.from((Context)localObject).inflate(2130903077, null);
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
  
  public boolean isEnabled(int paramInt)
  {
    return getItemViewType(paramInt) == 0;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */