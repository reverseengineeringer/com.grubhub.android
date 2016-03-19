package com.grubhub.AppBaseLibrary.android.welcome;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.GHSMainActivity;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.login.GHSLoginActivity;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.utils.c.f;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.views.GHSWelcomeScreenAddressBar;
import com.grubhub.AppBaseLibrary.android.views.aa;
import java.util.ArrayList;

public class GHSWelcomeActivity
  extends GHSBaseActivity
  implements aa, com.grubhub.AppBaseLibrary.android.views.b
{
  private boolean d;
  private boolean e;
  private GHSWelcomeScreenAddressBar f;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.g.a g;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.g.b h;
  
  public static Intent a(Context paramContext)
  {
    paramContext = new Intent(paramContext, GHSWelcomeActivity.class);
    paramContext.setFlags(67108864);
    return paramContext;
  }
  
  private void a(Context paramContext, com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    c.a(paramContext, paramb.f(), paramb.getLocalizedMessage(), null, null, getString(2131231717), null);
  }
  
  private void b(Context paramContext)
  {
    a(paramContext, new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_CANNOT_GEOCODE_NONE));
  }
  
  private void c(String paramString)
  {
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, f.HELP, paramString));
  }
  
  private void d(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  private void i()
  {
    p();
    k();
    l();
    m();
    n();
    o();
  }
  
  private void j()
  {
    final ImageView localImageView1 = (ImageView)findViewById(2131689624);
    ImageView localImageView2 = (ImageView)findViewById(2131689626);
    final View localView1 = findViewById(2131689627);
    final View localView2 = findViewById(2131689628);
    localImageView1.setVisibility(4);
    localView2.setVisibility(4);
    localView1.setVisibility(0);
    Animation localAnimation1 = AnimationUtils.loadAnimation(this, 2130968601);
    localAnimation1.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        localView1.setVisibility(8);
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    Animation localAnimation2 = AnimationUtils.loadAnimation(this, 2130968600);
    localAnimation2.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        paramAnonymousAnimation = AnimationUtils.loadAnimation(GHSWelcomeActivity.this, 2130968590);
        paramAnonymousAnimation.setAnimationListener(new Animation.AnimationListener()
        {
          public void onAnimationEnd(Animation paramAnonymous2Animation)
          {
            a.setVisibility(0);
            b.setVisibility(0);
          }
          
          public void onAnimationRepeat(Animation paramAnonymous2Animation) {}
          
          public void onAnimationStart(Animation paramAnonymous2Animation) {}
        });
        localImageView1.startAnimation(paramAnonymousAnimation);
        localView2.startAnimation(paramAnonymousAnimation);
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    localView1.startAnimation(localAnimation1);
    localImageView2.startAnimation(localAnimation2);
  }
  
  private void k()
  {
    findViewById(2131689630).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(final View paramAnonymousView)
      {
        if (GHSWelcomeActivity.a(GHSWelcomeActivity.this)) {
          return;
        }
        paramAnonymousView = findViewById(2131689637);
        final View localView1 = findViewById(2131689625);
        final View localView2 = findViewById(2131689632);
        Animation localAnimation1 = AnimationUtils.loadAnimation(GHSWelcomeActivity.this, 2130968621);
        localAnimation1.setAnimationListener(new Animation.AnimationListener()
        {
          public void onAnimationEnd(Animation paramAnonymous2Animation)
          {
            localView1.setVisibility(4);
            GHSWelcomeActivity.a(GHSWelcomeActivity.this, false);
          }
          
          public void onAnimationRepeat(Animation paramAnonymous2Animation) {}
          
          public void onAnimationStart(Animation paramAnonymous2Animation)
          {
            GHSWelcomeActivity.a(GHSWelcomeActivity.this, true);
          }
        });
        Animation localAnimation2 = AnimationUtils.loadAnimation(GHSWelcomeActivity.this, 2130968623);
        localAnimation2.setAnimationListener(new Animation.AnimationListener()
        {
          public void onAnimationEnd(Animation paramAnonymous2Animation)
          {
            paramAnonymousView.setVisibility(0);
            localView2.setVisibility(0);
          }
          
          public void onAnimationRepeat(Animation paramAnonymous2Animation) {}
          
          public void onAnimationStart(Animation paramAnonymous2Animation) {}
        });
        localView1.startAnimation(localAnimation1);
        localView2.startAnimation(localAnimation2);
        paramAnonymousView.startAnimation(localAnimation2);
        GHSWelcomeActivity.a(GHSWelcomeActivity.this, "onboarding 2 enter address");
      }
    });
  }
  
  private void l()
  {
    findViewById(2131689637).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(final View paramAnonymousView)
      {
        if (GHSWelcomeActivity.a(GHSWelcomeActivity.this)) {
          return;
        }
        GHSWelcomeActivity.b(GHSWelcomeActivity.this);
        paramAnonymousView = findViewById(2131689637);
        final View localView1 = findViewById(2131689625);
        final View localView2 = findViewById(2131689632);
        Animation localAnimation1 = AnimationUtils.loadAnimation(GHSWelcomeActivity.this, 2130968622);
        localAnimation1.setAnimationListener(new Animation.AnimationListener()
        {
          public void onAnimationEnd(Animation paramAnonymous2Animation)
          {
            localView1.setVisibility(0);
            GHSWelcomeActivity.a(GHSWelcomeActivity.this, false);
          }
          
          public void onAnimationRepeat(Animation paramAnonymous2Animation) {}
          
          public void onAnimationStart(Animation paramAnonymous2Animation)
          {
            GHSWelcomeActivity.a(GHSWelcomeActivity.this, true);
          }
        });
        Animation localAnimation2 = AnimationUtils.loadAnimation(GHSWelcomeActivity.this, 2130968624);
        localAnimation2.setAnimationListener(new Animation.AnimationListener()
        {
          public void onAnimationEnd(Animation paramAnonymous2Animation)
          {
            paramAnonymousView.setVisibility(4);
            localView2.setVisibility(4);
          }
          
          public void onAnimationRepeat(Animation paramAnonymous2Animation) {}
          
          public void onAnimationStart(Animation paramAnonymous2Animation) {}
        });
        localView1.startAnimation(localAnimation1);
        localView2.startAnimation(localAnimation2);
        paramAnonymousView.startAnimation(localAnimation2);
        GHSWelcomeActivity.a(GHSWelcomeActivity.this, "onboarding 1 start");
      }
    });
  }
  
  private void m()
  {
    findViewById(2131689631).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        startActivityForResult(GHSLoginActivity.a(GHSWelcomeActivity.this, com.grubhub.AppBaseLibrary.android.login.a.ONBOARDING), 0);
      }
    });
  }
  
  private void n()
  {
    findViewById(2131689623).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSWelcomeActivity.b(GHSWelcomeActivity.this);
      }
    });
  }
  
  private void o()
  {
    final View localView = findViewById(2131689623);
    localView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
    {
      public void onGlobalLayout()
      {
        int i = localView.getRootView().getHeight();
        int j = localView.getHeight();
        GHSWelcomeActivity localGHSWelcomeActivity = GHSWelcomeActivity.this;
        if (i - j > 100) {}
        for (boolean bool = true;; bool = false)
        {
          GHSWelcomeActivity.b(localGHSWelcomeActivity, bool);
          return;
        }
      }
    });
  }
  
  private void p()
  {
    ViewGroup localViewGroup = (ViewGroup)findViewById(2131689636);
    f.setAddressDropdownContainer(localViewGroup);
    f.setAddressBarListener(this);
  }
  
  private void q()
  {
    if ((f != null) && (f.a())) {
      f.c();
    }
  }
  
  public void a(double paramDouble1, double paramDouble2, final g paramg)
  {
    g = new com.grubhub.AppBaseLibrary.android.dataServices.a.g.a(this, paramDouble1, paramDouble2, new i()new i
    {
      public void a()
      {
        a(true);
      }
    }, new i()
    {
      public void a()
      {
        a(false);
        GHSWelcomeActivity.a(GHSWelcomeActivity.this, null);
      }
    });
    g.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSIAddressDataModel paramAnonymousGHSIAddressDataModel)
      {
        if (paramAnonymousGHSIAddressDataModel != null)
        {
          a(paramAnonymousGHSIAddressDataModel, com.grubhub.AppBaseLibrary.android.order.a.b(paramAnonymousGHSIAddressDataModel), paramg);
          return;
        }
        GHSWelcomeActivity.a(GHSWelcomeActivity.this, jdField_this);
      }
    });
    g.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        GHSWelcomeActivity.a(GHSWelcomeActivity.this, jdField_this, paramAnonymousb);
      }
    });
    g.a();
  }
  
  public void a(GHSIAddressDataModel paramGHSIAddressDataModel, String paramString, g paramg)
  {
    com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
    Object localObject1 = null;
    try
    {
      localObject2 = localb.z();
      localObject1 = localObject2;
    }
    catch (Exception localException)
    {
      Object localObject2;
      for (;;) {}
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = new GHSFilterSortCriteria();
    }
    ((GHSFilterSortCriteria)localObject2).setAddress(paramGHSIAddressDataModel, paramString);
    ((GHSFilterSortCriteria)localObject2).setOrderType(paramg);
    localb.a((GHSFilterSortCriteria)localObject2);
    localb.c(1);
    localb.i(true);
    startActivity(GHSMainActivity.a(this));
    finish();
  }
  
  public void a(String paramString1, final g paramg, String paramString2)
  {
    h = new com.grubhub.AppBaseLibrary.android.dataServices.a.g.b(this, paramString1, new i()new i
    {
      public void a()
      {
        a(true);
      }
    }, new i()
    {
      public void a()
      {
        a(false);
        GHSWelcomeActivity.a(GHSWelcomeActivity.this, null);
      }
    });
    h.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(ArrayList<GHSIAddressDataModel> paramAnonymousArrayList)
      {
        if ((paramAnonymousArrayList != null) && (!paramAnonymousArrayList.isEmpty()))
        {
          a((GHSIAddressDataModel)paramAnonymousArrayList.get(0), com.grubhub.AppBaseLibrary.android.order.a.b((GHSIAddressDataModel)paramAnonymousArrayList.get(0)), paramg);
          return;
        }
        GHSWelcomeActivity.a(GHSWelcomeActivity.this, jdField_this);
      }
    });
    h.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        GHSWelcomeActivity.a(GHSWelcomeActivity.this, jdField_this, paramAnonymousb);
      }
    });
    h.a();
  }
  
  public boolean a()
  {
    return e;
  }
  
  public void b()
  {
    findViewById(2131689637).performClick();
  }
  
  public void d() {}
  
  public void h() {}
  
  public void i_() {}
  
  public void j_() {}
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 0) && (GHSApplication.b(this)))
    {
      GHSApplication.a().b().i(true);
      startActivity(GHSMainActivity.a(this));
      finish();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903075);
    c();
    c = findViewById(2131690253);
    f = ((GHSWelcomeScreenAddressBar)findViewById(2131689635));
    f.setListener(this);
    i();
    j();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
  }
  
  protected void onStart()
  {
    super.onStart();
    if ((GHSApplication.a().b().v()) && (!isFinishing())) {
      finish();
    }
    c("onboarding 1 start");
  }
  
  protected void onStop()
  {
    super.onStop();
    if (g != null)
    {
      g.g();
      g = null;
    }
    if (h != null)
    {
      h.g();
      h = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.welcome.GHSWelcomeActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */