package com.grubhub.AppBaseLibrary.android.webContent;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.grubhub.AppBaseLibrary.android.GHSApplication;

public class GHSWebViewFragment
  extends Fragment
{
  private View a;
  private String b;
  private Handler c;
  private boolean d;
  
  public static GHSWebViewFragment a(String paramString)
  {
    GHSWebViewFragment localGHSWebViewFragment = new GHSWebViewFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("web_view_url", paramString);
    localGHSWebViewFragment.setArguments(localBundle);
    return localGHSWebViewFragment;
  }
  
  private Runnable a(final WebView paramWebView)
  {
    new Runnable()
    {
      public void run()
      {
        paramWebView.stopLoading();
        GHSWebViewFragment.b(GHSWebViewFragment.this);
      }
    };
  }
  
  private void a()
  {
    a.findViewById(2131690146).setVisibility(4);
    a.findViewById(2131690148).setVisibility(4);
    a.findViewById(2131690147).setVisibility(0);
  }
  
  private void b()
  {
    a.findViewById(2131690146).setVisibility(4);
    a.findViewById(2131690147).setVisibility(4);
    a.findViewById(2131690148).setVisibility(0);
    d = true;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = getArguments().getString("web_view_url");
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    a = paramLayoutInflater.inflate(2130903163, null);
    return a;
  }
  
  public void onResume()
  {
    super.onResume();
    WebView localWebView = (WebView)a.findViewById(2131690147);
    final Runnable localRunnable = a(localWebView);
    c = new Handler(Looper.getMainLooper());
    c.postDelayed(localRunnable, 15000L);
    localWebView.getSettings().setJavaScriptEnabled(true);
    localWebView.getSettings().setDomStorageEnabled(true);
    localWebView.setWebViewClient(new WebViewClient()
    {
      public void onReceivedError(WebView paramAnonymousWebView, int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2)
      {
        GHSWebViewFragment.a(GHSWebViewFragment.this).removeCallbacks(localRunnable);
        GHSWebViewFragment.b(GHSWebViewFragment.this);
      }
      
      public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        paramAnonymousWebView.loadUrl(paramAnonymousString);
        return true;
      }
    });
    localWebView.setWebChromeClient(new WebChromeClient()
    {
      public void onProgressChanged(WebView paramAnonymousWebView, int paramAnonymousInt)
      {
        if (paramAnonymousInt >= 100)
        {
          GHSWebViewFragment.a(GHSWebViewFragment.this).removeCallbacks(localRunnable);
          if (!GHSWebViewFragment.c(GHSWebViewFragment.this)) {
            GHSWebViewFragment.d(GHSWebViewFragment.this);
          }
        }
      }
    });
    if (GHSApplication.m())
    {
      localWebView.loadUrl(b);
      return;
    }
    b();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.webContent.GHSWebViewFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */