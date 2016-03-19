package com.grubhub.AppBaseLibrary.android.account;

import android.app.ActionBar;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.w;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import android.widget.Toast;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.GHSMainActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.login.GHSLoginActivity;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

public class GHSAccountSettingsActivity
  extends GHSBaseActivity
  implements b, c, d, f, i, m, s
{
  private View d;
  private TextView e;
  private View f;
  private TextView g;
  private View h;
  private TextView i;
  private View j;
  private View k;
  private w l;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.j.b m;
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, GHSAccountSettingsActivity.class);
  }
  
  private void a(GHSIAddressDataModel paramGHSIAddressDataModel, boolean paramBoolean1, boolean paramBoolean2)
  {
    GHSAddressInfoFragment localGHSAddressInfoFragment = GHSAddressInfoFragment.a(a.EDIT, paramBoolean1, paramBoolean2, com.grubhub.AppBaseLibrary.android.order.a.c(paramGHSIAddressDataModel), true);
    localGHSAddressInfoFragment.a(paramGHSIAddressDataModel);
    l.a().b(2131689598, localGHSAddressInfoFragment, GHSAddressInfoFragment.class.getSimpleName()).a(GHSAddressInfoFragment.class.getSimpleName()).a();
  }
  
  private String b(String paramString1, String paramString2)
  {
    String str = "";
    if (paramString1 != null) {
      str = "" + paramString1;
    }
    paramString1 = str;
    if (paramString2 != null) {
      paramString1 = str + " " + paramString2;
    }
    return paramString1;
  }
  
  private void e(String paramString)
  {
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("user account settings", "name_save", paramString));
  }
  
  public void a(final GHSIAddressDataModel paramGHSIAddressDataModel, final boolean paramBoolean1, final boolean paramBoolean2, String paramString)
  {
    if (com.grubhub.AppBaseLibrary.android.order.a.c(paramGHSIAddressDataModel))
    {
      new AlertDialog.Builder(this).setTitle(getString(2131230915)).setMessage(getString(2131230913)).setPositiveButton(getString(2131230914), new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
          GHSAccountSettingsActivity.a(GHSAccountSettingsActivity.this, paramGHSIAddressDataModel, paramBoolean1, paramBoolean2);
        }
      }).setNegativeButton(getString(2131230945), new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
        }
      }).setIcon(17301543).show();
      return;
    }
    a(paramGHSIAddressDataModel, paramBoolean1, paramBoolean2);
  }
  
  public void a(String paramString, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes, boolean paramBoolean)
  {
    GHSSavedPaymentListFragment localGHSSavedPaymentListFragment = (GHSSavedPaymentListFragment)l.a(GHSSavedPaymentListFragment.class.getSimpleName());
    if (localGHSSavedPaymentListFragment != null) {
      localGHSSavedPaymentListFragment.a(paramString, paramPaymentTypes);
    }
    b(GHSPaymentInfoFragment.class.getSimpleName());
  }
  
  public void a(String paramString1, String paramString2, GHSIAddressDataModel paramGHSIAddressDataModel) {}
  
  public void a(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      m = new com.grubhub.AppBaseLibrary.android.dataServices.a.j.b(this, paramString1, paramString2, null, null, null, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
      {
        public void a()
        {
          a(true);
        }
      }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
      {
        public void a()
        {
          GHSAccountSettingsActivity.a(GHSAccountSettingsActivity.this, null);
          a(false);
        }
      });
      m.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
        {
          if ((paramAnonymousGHSIUserAuthDataModel != null) && (!TextUtils.isEmpty(paramAnonymousGHSIUserAuthDataModel.getToken())))
          {
            GHSAccountSettingsActivity.a(GHSAccountSettingsActivity.this, "successful");
            GHSAccountSettingsActivity.b(GHSAccountSettingsActivity.this).setText(GHSAccountSettingsActivity.a(GHSAccountSettingsActivity.this, paramAnonymousGHSIUserAuthDataModel.getFirstName(), paramAnonymousGHSIUserAuthDataModel.getLastName()));
            b(GHSYourInfoFragment.class.getSimpleName());
            return;
          }
          GHSAccountSettingsActivity.a(GHSAccountSettingsActivity.this, "error");
        }
      });
      m.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          a(paramAnonymousb.getMessage(), true);
          GHSAccountSettingsActivity.a(GHSAccountSettingsActivity.this, "error");
        }
      });
      m.a();
      return;
    }
    onBackPressed();
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    View localView = getLayoutInflater().inflate(2130903210, null, false);
    ((TextView)localView.findViewById(2131690262)).setText(paramString);
    if (paramBoolean) {
      localView.setBackgroundColor(getResources().getColor(2131558466));
    }
    for (;;)
    {
      paramString = new Toast(this);
      paramString.setView(localView);
      paramString.setGravity(55, 0, getResources().getDimensionPixelSize(2131427350));
      paramString.setDuration(1);
      paramString.show();
      return;
      localView.setBackgroundColor(getResources().getColor(2131558487));
    }
  }
  
  public void a(boolean paramBoolean, String paramString)
  {
    l.a().b(2131689598, GHSAddressInfoFragment.a(a.ADD, paramBoolean, false, false, false), GHSAddressInfoFragment.class.getSimpleName()).a(GHSAddressInfoFragment.class.getSimpleName()).a();
  }
  
  protected void a(boolean paramBoolean1, boolean paramBoolean2, com.grubhub.AppBaseLibrary.android.dataServices.net.f paramf)
  {
    if ((!paramBoolean1) || (paramf != com.grubhub.AppBaseLibrary.android.dataServices.net.f.USER))
    {
      startActivity(GHSLoginActivity.a(this, com.grubhub.AppBaseLibrary.android.login.a.LOGIN, true, getString(2131230837)));
      finish();
    }
    while ((!paramBoolean1) || (!paramBoolean2) || (paramf != com.grubhub.AppBaseLibrary.android.dataServices.net.f.ANONYMOUS_USER)) {
      return;
    }
    com.grubhub.AppBaseLibrary.android.order.cart.i.a();
    startActivity(GHSMainActivity.a(this));
  }
  
  public void c(String paramString) {}
  
  public void d(String paramString)
  {
    GHSSavedAddressListFragment localGHSSavedAddressListFragment = (GHSSavedAddressListFragment)l.a(GHSSavedAddressListFragment.class.getSimpleName());
    if (localGHSSavedAddressListFragment != null) {
      localGHSSavedAddressListFragment.a(paramString);
    }
    b(GHSAddressInfoFragment.class.getSimpleName());
  }
  
  public void d(boolean paramBoolean)
  {
    GHSSavedPaymentListFragment localGHSSavedPaymentListFragment = (GHSSavedPaymentListFragment)l.a(GHSSavedPaymentListFragment.class.getSimpleName());
    if (localGHSSavedPaymentListFragment != null) {
      localGHSSavedPaymentListFragment.b();
    }
  }
  
  public void h() {}
  
  public void i()
  {
    l.a().b(2131689598, GHSPaymentInfoFragment.a(e.ADD, false), GHSPaymentInfoFragment.class.getSimpleName()).a(GHSPaymentInfoFragment.class.getSimpleName()).a();
  }
  
  public void j()
  {
    g.setText(GHSApplication.d(this).getEmail());
    b(GHSChangeEmailInfoFragment.class.getSimpleName());
  }
  
  public void k()
  {
    b(GHSChangePasswordInfoFragment.class.getSimpleName());
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    l.a(2131689598).onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903064);
    c = findViewById(2131690253);
    d = findViewById(2131689587);
    e = ((TextView)findViewById(2131689589));
    f = findViewById(2131689590);
    g = ((TextView)findViewById(2131689592));
    h = findViewById(2131689593);
    i = ((TextView)findViewById(2131689595));
    j = findViewById(2131689596);
    k = findViewById(2131689597);
    l = getSupportFragmentManager();
    i.setText("********");
    d.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = GHSApplication.d(GHSAccountSettingsActivity.this);
        GHSAccountSettingsActivity.a(GHSAccountSettingsActivity.this).a().a(GHSYourInfoFragment.class.getSimpleName()).a(2130968609, 2130968616, 2130968609, 2130968616).b(2131689598, GHSYourInfoFragment.a(r.SETTINGS, null, paramAnonymousView.getFirstName(), paramAnonymousView.getLastName(), GHSApplication.a().b().B()), GHSYourInfoFragment.class.getSimpleName()).a();
      }
    });
    f.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSAccountSettingsActivity.a(GHSAccountSettingsActivity.this).a().a(GHSChangeEmailInfoFragment.class.getSimpleName()).a(2130968609, 2130968616, 2130968609, 2130968616).b(2131689598, GHSChangeEmailInfoFragment.b(), GHSChangeEmailInfoFragment.class.getSimpleName()).a();
      }
    });
    h.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSAccountSettingsActivity.a(GHSAccountSettingsActivity.this).a().a(GHSChangePasswordInfoFragment.class.getSimpleName()).a(2130968609, 2130968616, 2130968609, 2130968616).b(2131689598, GHSChangePasswordInfoFragment.b(), GHSChangePasswordInfoFragment.class.getSimpleName()).a();
      }
    });
    j.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSAccountSettingsActivity.a(GHSAccountSettingsActivity.this).a().a(GHSSavedPaymentListFragment.class.getSimpleName()).a(2130968609, 2130968616, 2130968609, 2130968616).b(2131689598, GHSSavedPaymentListFragment.a(null, false, null), GHSSavedPaymentListFragment.class.getSimpleName()).a();
      }
    });
    k.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSAccountSettingsActivity.a(GHSAccountSettingsActivity.this).a().a(GHSSavedAddressListFragment.class.getSimpleName()).a(2130968609, 2130968616, 2130968609, 2130968616).b(2131689598, GHSSavedAddressListFragment.a(null, false, false), GHSSavedAddressListFragment.class.getSimpleName()).a();
      }
    });
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    int n = paramMenuItem.getItemId();
    if ((l.a(2131689598) == null) && (n == 16908332))
    {
      onBackPressed();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    getActionBar().setDisplayHomeAsUpEnabled(true);
    b(2131230876);
    return false;
  }
  
  protected void onResume()
  {
    super.onResume();
    invalidateOptionsMenu();
    GHSIUserAuthDataModel localGHSIUserAuthDataModel = GHSApplication.d(this);
    if (localGHSIUserAuthDataModel != null)
    {
      e.setText(b(localGHSIUserAuthDataModel.getFirstName(), localGHSIUserAuthDataModel.getLastName()));
      g.setText(localGHSIUserAuthDataModel.getEmail());
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, com.grubhub.AppBaseLibrary.android.utils.c.f.USER_ACCOUNT_INFO, "account settings"));
  }
  
  protected void onStop()
  {
    super.onStop();
    if (m != null)
    {
      m.g();
      m = null;
    }
    a(false);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSAccountSettingsActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */