package com.grubhub.AppBaseLibrary.android.yummyRummy;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.utils.f;
import com.grubhub.AppBaseLibrary.android.views.GHSButton;
import com.grubhub.AppBaseLibrary.android.webContent.GHSWebViewActivity;

public class GHSYummyRummyFragment
  extends Fragment
{
  private String a;
  private String b;
  
  public static GHSYummyRummyFragment a()
  {
    return new GHSYummyRummyFragment();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903165, paramViewGroup, false);
    a = GHSApplication.a().b().I();
    b = GHSApplication.a().b().K();
    if ((f.a(a)) || (f.a(b)) || (!GHSApplication.a().b().J()))
    {
      paramLayoutInflater.setVisibility(8);
      return paramLayoutInflater;
    }
    ((TextView)paramLayoutInflater.findViewById(2131690157)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        startActivity(GHSWebViewActivity.a(getActivity(), 2131230878, GHSYummyRummyFragment.a(GHSYummyRummyFragment.this)));
      }
    });
    ((GHSButton)paramLayoutInflater.findViewById(2131690158)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        startActivity(GHSWebViewActivity.a(getActivity(), 2131230878, GHSYummyRummyFragment.b(GHSYummyRummyFragment.this)));
        h.a().a(new c("on-site marketing", "yummy rummy", "play now_cta"));
      }
    });
    h.a().a(new c("on-site marketing", "yummy rummy", "play now_impression"));
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.yummyRummy.GHSYummyRummyFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */