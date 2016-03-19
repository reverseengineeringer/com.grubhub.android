package com.grubhub.AppBaseLibrary.android.order.search;

import android.app.ActionBar;
import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.a;
import com.grubhub.AppBaseLibrary.android.utils.c.b;
import com.grubhub.AppBaseLibrary.android.utils.c.e;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import java.util.ArrayList;
import java.util.List;

public class GHSMenuCategoryJumperFragment
  extends Fragment
  implements a
{
  private String a;
  private List<String> b;
  private f c;
  private View d;
  private c e;
  private GestureDetector f;
  
  public static GHSMenuCategoryJumperFragment a(String paramString, ArrayList<String> paramArrayList)
  {
    GHSMenuCategoryJumperFragment localGHSMenuCategoryJumperFragment = new GHSMenuCategoryJumperFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("restaurant_id", paramString);
    localBundle.putStringArrayList("category_list", paramArrayList);
    localGHSMenuCategoryJumperFragment.setArguments(localBundle);
    return localGHSMenuCategoryJumperFragment;
  }
  
  private void a(final int paramInt)
  {
    View localView = d.findViewById(2131689886);
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, localView.getWidth(), 0.0F, 0.0F);
    localTranslateAnimation.setInterpolator(new AccelerateInterpolator());
    localTranslateAnimation.setDuration(250L);
    localTranslateAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        if (paramInt > -1) {
          GHSMenuCategoryJumperFragment.c(GHSMenuCategoryJumperFragment.this).a(paramInt);
        }
        GHSMenuCategoryJumperFragment.d(GHSMenuCategoryJumperFragment.this).f();
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    localView.startAnimation(localTranslateAnimation);
  }
  
  private void d()
  {
    View localView = d.findViewById(2131689886);
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(localView.getWidth(), 0.0F, 0.0F, 0.0F);
    localTranslateAnimation.setInterpolator(new AccelerateInterpolator());
    localTranslateAnimation.setDuration(250L);
    localView.startAnimation(localTranslateAnimation);
  }
  
  public void b() {}
  
  public void c() {}
  
  public boolean f_()
  {
    a(-1);
    return true;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    Fragment localFragment = getParentFragment();
    if ((localFragment != null) && ((localFragment instanceof f))) {
      c = ((f)getParentFragment());
    }
    do
    {
      while ((localFragment != null) && ((localFragment instanceof c)))
      {
        e = ((c)getParentFragment());
        return;
        if ((paramActivity instanceof f)) {
          c = ((f)paramActivity);
        }
      }
    } while (!(paramActivity instanceof f));
    e = ((c)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = getArguments().getString("restaurant_id");
    b = getArguments().getStringArrayList("category_list");
    f = new GestureDetector(getActivity(), new d(this, null));
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, final Bundle paramBundle)
  {
    d = paramLayoutInflater.inflate(2130903130, paramViewGroup, false);
    paramLayoutInflater = d.findViewById(2131689885);
    paramLayoutInflater.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSMenuCategoryJumperFragment.a(GHSMenuCategoryJumperFragment.this, -1);
      }
    });
    paramViewGroup = (ListView)d.findViewById(2131689887);
    paramViewGroup.setAdapter(new ArrayAdapter(getActivity(), 2130903182, b));
    paramViewGroup.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        GHSMenuCategoryJumperFragment.a(GHSMenuCategoryJumperFragment.this, paramAnonymousInt);
      }
    });
    paramBundle = d.findViewById(2131689886);
    paramBundle.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener()
    {
      public boolean onPreDraw()
      {
        paramBundle.getViewTreeObserver().removeOnPreDrawListener(this);
        GHSMenuCategoryJumperFragment.a(GHSMenuCategoryJumperFragment.this);
        return true;
      }
    });
    setHasOptionsMenu(true);
    paramViewGroup.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        return GHSMenuCategoryJumperFragment.b(GHSMenuCategoryJumperFragment.this).onTouchEvent(paramAnonymousMotionEvent);
      }
    });
    paramLayoutInflater.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        return GHSMenuCategoryJumperFragment.b(GHSMenuCategoryJumperFragment.this).onTouchEvent(paramAnonymousMotionEvent);
      }
    });
    return d;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131689476)
    {
      a(-1);
      return true;
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
    paramMenu.getActionBar().setDisplayHomeAsUpEnabled(true);
    if ((paramMenu instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)paramMenu).b(2131230852);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    h.a().a(new b(e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_DETAILS, "restaurant menu categories", a, null));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSMenuCategoryJumperFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */