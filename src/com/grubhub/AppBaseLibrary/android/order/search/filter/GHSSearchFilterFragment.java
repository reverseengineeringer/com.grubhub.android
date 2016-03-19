package com.grubhub.AppBaseLibrary.android.order.search.filter;

import android.app.ActionBar;
import android.app.Activity;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTabHost;
import android.support.v4.app.w;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import android.widget.TabHost.TabSpec;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.e;
import com.grubhub.AppBaseLibrary.android.views.GHSRestaurantFilterView;

public class GHSSearchFilterFragment
  extends Fragment
  implements com.grubhub.AppBaseLibrary.android.a
{
  private boolean a;
  private int b;
  private Activity c;
  private View d;
  private GHSFilterSortCriteria e;
  private d f;
  
  private View a(int paramInt, LayoutInflater paramLayoutInflater)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903230, null);
    ((TextView)paramLayoutInflater.findViewById(2131690334)).setText(getResources().getString(paramInt));
    return paramLayoutInflater;
  }
  
  private void a(View paramView, LayoutInflater paramLayoutInflater)
  {
    paramView = (FragmentTabHost)paramView.findViewById(2131690112);
    paramView.a(c, getChildFragmentManager(), 16908305);
    TabHost.TabSpec localTabSpec1 = paramView.newTabSpec("cuisines");
    localTabSpec1.setIndicator(a(2131231990, paramLayoutInflater));
    TabHost.TabSpec localTabSpec2 = paramView.newTabSpec("refine");
    localTabSpec2.setIndicator(a(2131231997, paramLayoutInflater));
    paramView.a(localTabSpec1, GHSCuisineFilterFragment.class, e());
    paramView.a(localTabSpec2, GHSMoreFilterFragment.class, f());
    if (b == 0) {
      paramView.setCurrentTab(1);
    }
  }
  
  private Bundle e()
  {
    return com.grubhub.AppBaseLibrary.android.order.search.filter.a.a.a(GHSCuisineFilterFragment.class, e);
  }
  
  private Bundle f()
  {
    return com.grubhub.AppBaseLibrary.android.order.search.filter.a.a.a(GHSMoreFilterFragment.class, e);
  }
  
  private void g()
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, iy, 0.0F);
    localTranslateAnimation.setDuration(300L);
    d.startAnimation(localTranslateAnimation);
  }
  
  private void h()
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, 0.0F, iy);
    localTranslateAnimation.setDuration(300L);
    localTranslateAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        if (GHSSearchFilterFragment.b(GHSSearchFilterFragment.this) != null) {
          GHSSearchFilterFragment.b(GHSSearchFilterFragment.this).j();
        }
        GHSSearchFilterFragment.a(GHSSearchFilterFragment.this, false);
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation)
      {
        GHSSearchFilterFragment.a(GHSSearchFilterFragment.this, true);
      }
    });
    d.startAnimation(localTranslateAnimation);
  }
  
  private Point i()
  {
    Window localWindow = c.getWindow();
    Point localPoint = new Point();
    localWindow.getWindowManager().getDefaultDisplay().getSize(localPoint);
    return localPoint;
  }
  
  public void a(int paramInt)
  {
    b = paramInt;
  }
  
  public void a(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    e = paramGHSFilterSortCriteria;
  }
  
  public void b() {}
  
  public void c() {}
  
  public void d()
  {
    f_();
  }
  
  public boolean f_()
  {
    if (!a) {
      h();
    }
    return true;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    c = paramActivity;
    paramActivity = getParentFragment();
    if ((paramActivity != null) && ((paramActivity instanceof d))) {
      f = ((d)getParentFragment());
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    d = paramLayoutInflater.inflate(2130903158, null);
    a(d, paramLayoutInflater);
    d.findViewById(2131690114).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (GHSSearchFilterFragment.a(GHSSearchFilterFragment.this) == null) {
          GHSSearchFilterFragment.a(GHSSearchFilterFragment.this, new GHSFilterSortCriteria());
        }
        paramAnonymousView = (c)getChildFragmentManager().a("cuisines");
        c localc = (c)getChildFragmentManager().a("refine");
        if (paramAnonymousView != null) {
          paramAnonymousView.a(GHSSearchFilterFragment.a(GHSSearchFilterFragment.this));
        }
        if (localc != null) {
          localc.a(GHSSearchFilterFragment.a(GHSSearchFilterFragment.this));
        }
        if (GHSSearchFilterFragment.b(GHSSearchFilterFragment.this) != null)
        {
          f_();
          GHSSearchFilterFragment.b(GHSSearchFilterFragment.this).a(GHSSearchFilterFragment.a(GHSSearchFilterFragment.this));
        }
      }
    });
    d.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener()
    {
      public boolean onPreDraw()
      {
        GHSSearchFilterFragment.c(GHSSearchFilterFragment.this).getViewTreeObserver().removeOnPreDrawListener(this);
        GHSSearchFilterFragment.d(GHSSearchFilterFragment.this);
        return true;
      }
    });
    ((GHSRestaurantFilterView)d).setFilterFragment(this);
    return d;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332) {
      return f_();
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu = paramMenu.findItem(2131690345);
    if (paramMenu != null) {
      paramMenu.setVisible(false);
    }
    paramMenu = getActivity();
    ActionBar localActionBar = paramMenu.getActionBar();
    if (localActionBar != null) {
      localActionBar.setDisplayHomeAsUpEnabled(true);
    }
    if ((paramMenu instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)paramMenu).b(2131230846);
    }
    if ((paramMenu instanceof e)) {
      ((e)paramMenu).d(4);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.GHSSearchFilterFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */