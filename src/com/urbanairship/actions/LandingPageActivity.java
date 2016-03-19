package com.urbanairship.actions;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ProgressBar;
import com.urbanairship.Autopilot;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.analytics.Analytics;
import com.urbanairship.richpush.RichPushInbox;
import com.urbanairship.richpush.RichPushManager;
import com.urbanairship.richpush.RichPushMessage;
import com.urbanairship.util.ManifestUtils;
import com.urbanairship.widget.UAWebView;
import com.urbanairship.widget.UAWebViewClient;

public class LandingPageActivity
  extends Activity
{
  public static final String LANDING_PAGE_BACKGROUND_COLOR = "com.urbanairship.LANDING_PAGE_BACKGROUND_COLOR";
  private static final long LANDING_PAGE_RETRY_DELAY_MS = 20000L;
  public static final String LANDING_PAGE_VIEW_KEY = "com.urbanairship.action.LANDING_PAGE_VIEW";
  private Integer error = null;
  private Handler handler;
  private Uri uri;
  private UAWebView webView;
  private int webViewBackgroundColor = -1;
  
  private View createDefaultLandingPageView()
  {
    FrameLayout localFrameLayout = new FrameLayout(this);
    Object localObject = new UAWebView(this);
    ((UAWebView)localObject).setId(16908300);
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1);
    gravity = 17;
    localFrameLayout.addView((View)localObject, localLayoutParams);
    localObject = new ProgressBar(this);
    ((ProgressBar)localObject).setIndeterminate(true);
    ((ProgressBar)localObject).setId(16908301);
    localLayoutParams = new FrameLayout.LayoutParams(-2, -2);
    gravity = 17;
    localFrameLayout.addView((View)localObject, localLayoutParams);
    return localFrameLayout;
  }
  
  @SuppressLint({"NewApi"})
  private void crossFade(View paramView1, final View paramView2)
  {
    if (Build.VERSION.SDK_INT < 12)
    {
      if (paramView1 != null) {
        paramView1.setVisibility(0);
      }
      if (paramView2 != null) {
        paramView2.setVisibility(8);
      }
    }
    do
    {
      return;
      if (paramView1 != null) {
        paramView1.animate().alpha(1.0F).setDuration(200L);
      }
    } while (paramView2 == null);
    paramView2.animate().alpha(0.0F).setDuration(200L).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        paramView2.setVisibility(8);
      }
    });
  }
  
  private void restartActivity(Uri paramUri, Bundle paramBundle)
  {
    Logger.debug("Relaunching activity");
    finish();
    paramUri = new Intent().setClass(this, getClass()).setData(paramUri).setFlags(268435456);
    if (paramBundle != null) {
      paramUri.putExtras(paramBundle);
    }
    startActivity(paramUri);
  }
  
  protected void loadLandingPage()
  {
    loadLandingPage(0L);
  }
  
  @SuppressLint({"NewApi"})
  protected void loadLandingPage(long paramLong)
  {
    if (webView == null) {
      return;
    }
    webView.stopLoading();
    if (paramLong > 0L)
    {
      handler.postAtTime(new Runnable()
      {
        public void run()
        {
          loadLandingPage(0L);
        }
      }, uri, SystemClock.uptimeMillis() + paramLong);
      return;
    }
    Logger.info("Loading landing page: " + uri);
    if (webViewBackgroundColor != -1) {
      webView.setBackgroundColor(webViewBackgroundColor);
    }
    if (Build.VERSION.SDK_INT >= 11) {
      webView.setLayerType(1, null);
    }
    error = null;
    if (uri.getScheme().equalsIgnoreCase("message"))
    {
      String str = uri.getSchemeSpecificPart();
      RichPushMessage localRichPushMessage = UAirship.shared().getRichPushManager().getRichPushInbox().getMessage(str);
      if (localRichPushMessage != null)
      {
        webView.loadRichPushMessage(localRichPushMessage);
        localRichPushMessage.markRead();
        return;
      }
      Logger.error("Message " + str + " not found.");
      finish();
      return;
    }
    webView.loadUrl(uri.toString());
  }
  
  public void onCloseButtonClick(View paramView)
  {
    finish();
  }
  
  @SuppressLint({"NewApi"})
  public final void onCreate(final Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Autopilot.automaticTakeOff(getApplication());
    Logger.debug("Creating landing page activity.");
    Intent localIntent = getIntent();
    if (localIntent == null)
    {
      Logger.warn("LandingPageActivity - Started activity with null intent");
      finish();
      return;
    }
    paramBundle = ManifestUtils.getActivityInfo(getClass());
    if ((paramBundle == null) || (metaData == null)) {}
    for (paramBundle = new Bundle();; paramBundle = metaData)
    {
      webViewBackgroundColor = paramBundle.getInt("com.urbanairship.LANDING_PAGE_BACKGROUND_COLOR", -1);
      handler = new Handler();
      uri = localIntent.getData();
      if (uri != null) {
        break;
      }
      Logger.warn("LandingPageActivity - No landing page uri to load.");
      finish();
      return;
    }
    int i = paramBundle.getInt("com.urbanairship.action.LANDING_PAGE_VIEW", -1);
    if (i != -1)
    {
      setContentView(i);
      if (Build.VERSION.SDK_INT >= 11)
      {
        paramBundle = getActionBar();
        if (paramBundle != null) {
          paramBundle.setDisplayOptions(4, 4);
        }
      }
      webView = ((UAWebView)findViewById(16908300));
      paramBundle = (ProgressBar)findViewById(16908301);
      if (webView == null) {
        break label247;
      }
      if (Build.VERSION.SDK_INT < 12) {
        break label236;
      }
      webView.setAlpha(0.0F);
    }
    for (;;)
    {
      webView.setWebViewClient(new UAWebViewClient()
      {
        public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
        {
          super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
          if (error != null)
          {
            switch (error.intValue())
            {
            default: 
              LandingPageActivity.access$002(LandingPageActivity.this, null);
              webView.loadData("", "text/html", null);
              return;
            }
            loadLandingPage(20000L);
            return;
          }
          if (webViewBackgroundColor != -1) {
            webView.setBackgroundColor(webViewBackgroundColor);
          }
          LandingPageActivity.this.crossFade(webView, paramBundle);
        }
        
        public void onReceivedError(WebView paramAnonymousWebView, int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2)
        {
          if ((paramAnonymousString2 != null) && (paramAnonymousString2.equals(getIntent().getDataString())))
          {
            Logger.error("LandingPageActivity - Failed to load page " + paramAnonymousString2 + " with error " + paramAnonymousInt + " " + paramAnonymousString1);
            LandingPageActivity.access$002(LandingPageActivity.this, Integer.valueOf(paramAnonymousInt));
          }
        }
      });
      return;
      setContentView(createDefaultLandingPageView());
      break;
      label236:
      webView.setVisibility(4);
    }
    label247:
    Logger.error("LandingPageActivity - A UAWebView with id android.R.id.primary is not defined in the custom layout.  Unable to show the landing page.");
    finish();
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    Logger.debug("LandingPageActivity - New intent received for landing page");
    restartActivity(paramIntent.getData(), paramIntent.getExtras());
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      finish();
      return true;
    }
    return false;
  }
  
  @SuppressLint({"NewApi"})
  public void onPause()
  {
    super.onPause();
    if (Build.VERSION.SDK_INT >= 11) {
      webView.onPause();
    }
    webView.stopLoading();
    handler.removeCallbacksAndMessages(uri);
  }
  
  @SuppressLint({"NewApi"})
  public void onResume()
  {
    super.onResume();
    if (Build.VERSION.SDK_INT >= 11) {
      webView.onResume();
    }
    loadLandingPage();
  }
  
  protected void onStart()
  {
    super.onStart();
    Analytics.activityStarted(this);
  }
  
  protected void onStop()
  {
    super.onStop();
    Analytics.activityStopped(this);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.LandingPageActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */