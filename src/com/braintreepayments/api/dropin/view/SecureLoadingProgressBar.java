package com.braintreepayments.api.dropin.view;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.braintreepayments.api.dropin.a.a;
import com.braintreepayments.api.dropin.i;
import com.braintreepayments.api.dropin.k;

public class SecureLoadingProgressBar
  extends RelativeLayout
{
  public SecureLoadingProgressBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public SecureLoadingProgressBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams.addRule(13);
    Object localObject = (ProgressBar)inflate(paramContext, k.bt_secure_loading_progress_bar, null);
    ((ProgressBar)localObject).setIndeterminate(true);
    ((ProgressBar)localObject).setIndeterminateDrawable(paramContext.getResources().getDrawable(i.bt_loading_animation));
    ((ProgressBar)localObject).setInterpolator(new a());
    ((ProgressBar)localObject).setLayoutParams(localLayoutParams);
    addView((View)localObject);
    localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams.addRule(13);
    localObject = new ImageView(paramContext);
    ((ImageView)localObject).setImageDrawable(paramContext.getResources().getDrawable(i.bt_secure));
    ((ImageView)localObject).setLayoutParams(localLayoutParams);
    ((ImageView)localObject).setPadding(0, 0, 0, 4);
    addView((View)localObject);
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.dropin.view.SecureLoadingProgressBar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */