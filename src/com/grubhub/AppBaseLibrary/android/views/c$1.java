package com.grubhub.AppBaseLibrary.android.views;

import android.location.Location;
import android.widget.Filter;
import android.widget.Filter.FilterResults;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.net.a;
import com.grubhub.AppBaseLibrary.android.utils.e.b;
import java.util.ArrayList;
import java.util.Locale;

class c$1
  extends Filter
{
  c$1(c paramc) {}
  
  protected Filter.FilterResults performFiltering(CharSequence paramCharSequence)
  {
    String str = null;
    Filter.FilterResults localFilterResults;
    Object localObject;
    Double localDouble;
    if (!c.a(a))
    {
      localFilterResults = new Filter.FilterResults();
      if (paramCharSequence != null)
      {
        localObject = GHSAddressBar.n(a.a);
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
      paramCharSequence = paramCharSequence.toString().toLowerCase(Locale.US);
      c.a(a, GHSApplication.a(c.b(a)).a(paramCharSequence, localDouble, (Double)localObject));
      if ((c.c(a) == null) || (c.c(a).size() == 0)) {
        b.a(c.c(a), paramCharSequence, str);
      }
      values = c.c(a);
      count = c.c(a).size();
      return localFilterResults;
      c.a(a, false);
      return null;
      label196:
      localObject = null;
      localDouble = null;
    }
  }
  
  protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    if ((paramFilterResults != null) && (count > 0))
    {
      a.notifyDataSetChanged();
      return;
    }
    a.notifyDataSetInvalidated();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.c.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */