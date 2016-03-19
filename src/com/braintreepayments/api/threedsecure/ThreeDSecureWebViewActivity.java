package com.braintreepayments.api.threedsecure;

import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.MenuItem;
import android.widget.FrameLayout;
import com.braintreepayments.api.models.ThreeDSecureAuthenticationResponse;
import com.braintreepayments.api.models.ThreeDSecureLookup;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import java.util.Stack;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.message.BasicNameValuePair;

public class ThreeDSecureWebViewActivity
  extends Activity
{
  private ActionBar a;
  private FrameLayout b;
  private Stack<b> c;
  
  @TargetApi(11)
  private void b()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = getActionBar();
      if (a != null)
      {
        a("");
        a.setDisplayHomeAsUpEnabled(true);
      }
    }
  }
  
  protected void a()
  {
    c.pop();
    a((b)c.pop());
  }
  
  protected void a(ThreeDSecureAuthenticationResponse paramThreeDSecureAuthenticationResponse)
  {
    setResult(-1, new Intent().putExtra("com.braintreepayments.api.EXTRA_THREE_D_SECURE_RESULT", paramThreeDSecureAuthenticationResponse));
    finish();
  }
  
  protected void a(b paramb)
  {
    c.push(paramb);
    b.removeAllViews();
    b.addView(paramb);
  }
  
  @TargetApi(11)
  protected void a(String paramString)
  {
    if (a != null) {
      a.setTitle(paramString);
    }
  }
  
  public void onBackPressed()
  {
    if (((b)c.peek()).canGoBack())
    {
      ((b)c.peek()).goBack();
      return;
    }
    if (c.size() > 1)
    {
      a();
      return;
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(2);
    paramBundle = (ThreeDSecureLookup)getIntent().getParcelableExtra("com.braintreepayments.api.EXTRA_THREE_D_SECURE_LOOKUP");
    if (paramBundle == null) {
      throw new IllegalArgumentException("A ThreeDSecureLookup must be specified with " + ThreeDSecureLookup.class.getSimpleName() + ".EXTRA_THREE_D_SECURE_LOOKUP extra");
    }
    b();
    c = new Stack();
    b = ((FrameLayout)findViewById(16908290));
    Object localObject = new LinkedList();
    ((List)localObject).add(new BasicNameValuePair("PaReq", paramBundle.d()));
    ((List)localObject).add(new BasicNameValuePair("MD", paramBundle.b()));
    ((List)localObject).add(new BasicNameValuePair("TermUrl", paramBundle.c()));
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      new UrlEncodedFormEntity((List)localObject, "UTF-8").writeTo(localByteArrayOutputStream);
      localObject = new b(this);
      ((b)localObject).a(this);
      ((b)localObject).postUrl(paramBundle.a(), localByteArrayOutputStream.toByteArray());
      a((b)localObject);
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        finish();
      }
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      setResult(0);
      finish();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.threedsecure.ThreeDSecureWebViewActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */