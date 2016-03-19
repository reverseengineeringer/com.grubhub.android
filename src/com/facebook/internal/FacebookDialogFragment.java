package com.facebook.internal;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.q;
import com.facebook.h;
import com.facebook.m;

public class FacebookDialogFragment
  extends DialogFragment
{
  private Dialog a;
  
  private void a(Bundle paramBundle)
  {
    q localq = getActivity();
    Intent localIntent = new Intent();
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = new Bundle();
    }
    localIntent.putExtras(localBundle);
    localq.setResult(-1, localIntent);
    localq.finish();
  }
  
  private void a(Bundle paramBundle, h paramh)
  {
    q localq = getActivity();
    paramBundle = ac.a(localq.getIntent(), paramBundle, paramh);
    if (paramh == null) {}
    for (int i = -1;; i = 0)
    {
      localq.setResult(i, paramBundle);
      localq.finish();
      return;
    }
  }
  
  public void a(Dialog paramDialog)
  {
    a = paramDialog;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if ((a instanceof aq)) {
      ((aq)a).d();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Bundle localBundle;
    String str;
    if (a == null)
    {
      paramBundle = getActivity();
      localBundle = ac.d(paramBundle.getIntent());
      if (localBundle.getBoolean("is_fallback", false)) {
        break label99;
      }
      str = localBundle.getString("action");
      localBundle = localBundle.getBundle("params");
      if (al.a(str))
      {
        al.b("FacebookDialogFragment", "Cannot start a WebDialog with an empty/missing 'actionName'");
        paramBundle.finish();
      }
    }
    else
    {
      return;
    }
    paramBundle = new ar(paramBundle, str, localBundle).a(new at()
    {
      public void a(Bundle paramAnonymousBundle, h paramAnonymoush)
      {
        FacebookDialogFragment.a(FacebookDialogFragment.this, paramAnonymousBundle, paramAnonymoush);
      }
    }).a();
    for (;;)
    {
      a = paramBundle;
      return;
      label99:
      str = localBundle.getString("url");
      if (al.a(str))
      {
        al.b("FacebookDialogFragment", "Cannot start a fallback WebDialog with an empty/missing 'url'");
        paramBundle.finish();
        return;
      }
      paramBundle = new r(paramBundle, str, String.format("fb%s://bridge/", new Object[] { m.i() }));
      paramBundle.a(new at()
      {
        public void a(Bundle paramAnonymousBundle, h paramAnonymoush)
        {
          FacebookDialogFragment.a(FacebookDialogFragment.this, paramAnonymousBundle);
        }
      });
    }
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    if (a == null)
    {
      a(null, null);
      setShowsDialog(false);
    }
    return a;
  }
  
  public void onDestroyView()
  {
    if ((getDialog() != null) && (getRetainInstance())) {
      getDialog().setDismissMessage(null);
    }
    super.onDestroyView();
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.FacebookDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */