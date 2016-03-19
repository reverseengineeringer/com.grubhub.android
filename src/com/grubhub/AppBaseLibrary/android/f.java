package com.grubhub.AppBaseLibrary.android;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class f
  implements AdapterView.OnItemClickListener
{
  private Context b;
  private Resources c;
  
  public f(GHSNavigationDrawerFragment paramGHSNavigationDrawerFragment, Context paramContext)
  {
    b = paramContext;
    c = paramContext.getResources();
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    a.b();
    paramAdapterView = (com.grubhub.AppBaseLibrary.android.c.b.b)paramAdapterView.getItemAtPosition(paramInt);
    switch (GHSNavigationDrawerFragment.2.a[paramAdapterView.c().ordinal()])
    {
    default: 
    case 1: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
    case 7: 
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  return;
                  GHSNavigationDrawerFragment.f(a);
                  return;
                } while (GHSNavigationDrawerFragment.g(a) == null);
                GHSNavigationDrawerFragment.g(a).x();
                return;
              } while (GHSNavigationDrawerFragment.g(a) == null);
              GHSNavigationDrawerFragment.g(a).u();
              return;
            } while (GHSNavigationDrawerFragment.g(a) == null);
            GHSNavigationDrawerFragment.g(a).v();
            return;
          } while (GHSNavigationDrawerFragment.g(a) == null);
          GHSNavigationDrawerFragment.g(a).w();
          return;
        } while (GHSNavigationDrawerFragment.g(a) == null);
        GHSNavigationDrawerFragment.g(a).t();
        return;
      } while (!(a.getActivity() instanceof com.grubhub.AppBaseLibrary.android.feedback.e));
      ((com.grubhub.AppBaseLibrary.android.feedback.e)a.getActivity()).a(com.grubhub.AppBaseLibrary.android.feedback.b.TRAY);
      return;
    case 8: 
      GHSNavigationDrawerFragment.a(a, b, 2131231690, String.format("%s%s", new Object[] { c.getString(2131231611), c.getString(2131231612) }));
      return;
    case 9: 
      GHSNavigationDrawerFragment.a(a, b, 2131231687, String.format("%s%s%s", new Object[] { c.getString(2131231611), c.getString(2131231610), com.grubhub.AppBaseLibrary.android.utils.b.a(b) }));
      return;
    }
    GHSNavigationDrawerFragment.h(a);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */