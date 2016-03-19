package com.grubhub.AppBaseLibrary.android.order.receipt;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.w;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.views.GHSFeedbackView;
import com.grubhub.AppBaseLibrary.android.yummyRummy.GHSYummyRummyFragment;

public class GHSReceiptActivity
  extends GHSBaseActivity
{
  public static Intent a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes, a parama)
  {
    paramContext = new Intent(paramContext, GHSReceiptActivity.class);
    paramContext.putExtra("order_number", paramString1);
    paramContext.putExtra("first_name", paramString2);
    paramContext.putExtra("last_name", paramString3);
    paramContext.putExtra("phone_number", paramString4);
    paramContext.putExtra("is_delivery", paramBoolean);
    paramContext.putExtra("launch_reason", parama);
    if (paramPaymentTypes == null)
    {
      paramContext.putExtra("payment_type", GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD);
      return paramContext;
    }
    paramContext.putExtra("payment_type", paramPaymentTypes);
    return paramContext;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903071);
    a = ((GHSFeedbackView)findViewById(2131689610));
    if (a != null) {
      a.setListener(this);
    }
    paramBundle = getSupportFragmentManager();
    Object localObject1 = paramBundle.a(2131689617);
    Object localObject2 = paramBundle.a(2131689616);
    if ((localObject1 == null) && (localObject2 == null))
    {
      localObject2 = getIntent().getStringExtra("order_number");
      Object localObject3 = getIntent().getStringExtra("first_name");
      String str1 = getIntent().getStringExtra("last_name");
      String str2 = getIntent().getStringExtra("phone_number");
      boolean bool = getIntent().getBooleanExtra("is_delivery", false);
      localObject1 = (a)getIntent().getSerializableExtra("launch_reason");
      localObject2 = GHSReceiptFragment.a((String)localObject2, (String)localObject3, str1, str2, bool, (GHSICartPaymentDataModel.PaymentTypes)getIntent().getSerializableExtra("payment_type"), (a)localObject1);
      localObject3 = GHSYummyRummyFragment.a();
      paramBundle = paramBundle.a();
      if (localObject1 == a.LAUNCHED_BY_CART) {
        paramBundle.a(2131689616, (Fragment)localObject3, GHSYummyRummyFragment.class.getSimpleName());
      }
      paramBundle.a(2131689617, (Fragment)localObject2, GHSReceiptFragment.class.getSimpleName());
      paramBundle.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.receipt.GHSReceiptActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */