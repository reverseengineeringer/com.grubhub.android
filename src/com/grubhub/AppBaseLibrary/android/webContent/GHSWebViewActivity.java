package com.grubhub.AppBaseLibrary.android.webContent;

import android.app.ActionBar;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.ag;
import android.support.v4.app.w;
import android.view.Menu;
import android.view.MenuItem;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;

public class GHSWebViewActivity
  extends GHSBaseActivity
{
  public static Intent a(Context paramContext, int paramInt, String paramString)
  {
    paramContext = new Intent(paramContext, GHSWebViewActivity.class);
    paramContext.putExtra("web_view_title", paramInt);
    paramContext.putExtra("web_view_url", paramString);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = new Intent(paramContext, GHSWebViewActivity.class);
    paramContext.putExtra("web_view_title", paramString1);
    paramContext.putExtra("web_view_url", paramString2);
    return paramContext;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903074);
    paramBundle = getIntent().getExtras();
    if ((paramBundle == null) || (!paramBundle.containsKey("web_view_title")) || (!paramBundle.containsKey("web_view_url")))
    {
      finish();
      return;
    }
    Object localObject = paramBundle.get("web_view_title");
    if ((localObject instanceof String)) {
      a((String)localObject);
    }
    for (;;)
    {
      paramBundle = GHSWebViewFragment.a(paramBundle.getString("web_view_url"));
      getSupportFragmentManager().a().b(2131689622, paramBundle, GHSWebViewFragment.class.getSimpleName()).a();
      return;
      b(paramBundle.getInt("web_view_title"));
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      onBackPressed();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    getActionBar().setDisplayHomeAsUpEnabled(true);
    return super.onPrepareOptionsMenu(paramMenu);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.webContent.GHSWebViewActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */