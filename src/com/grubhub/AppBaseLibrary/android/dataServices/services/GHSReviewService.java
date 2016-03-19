package com.grubhub.AppBaseLibrary.android.dataServices.services;

import android.content.Context;
import android.content.Intent;
import android.support.v4.content.o;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.a;
import com.grubhub.AppBaseLibrary.android.utils.d;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public class GHSReviewService
  extends GHSBaseIntentService
{
  public GHSReviewService()
  {
    super(GHSReviewService.class.getSimpleName());
  }
  
  private int a(GHSCreateOrderReviewDataModel paramGHSCreateOrderReviewDataModel, boolean paramBoolean)
  {
    boolean bool = a(paramGHSCreateOrderReviewDataModel);
    if ((paramGHSCreateOrderReviewDataModel != null) && (bool))
    {
      bool = false;
      if (GHSApplication.m()) {
        bool = a().a(paramGHSCreateOrderReviewDataModel);
      }
      b localb = b();
      if (!paramBoolean) {
        localb.d(paramGHSCreateOrderReviewDataModel.getOrderId());
      }
      if (bool)
      {
        if (paramBoolean) {
          localb.b(paramGHSCreateOrderReviewDataModel.getOrderId());
        }
        b().e(paramGHSCreateOrderReviewDataModel.getOrderId());
        return 1;
      }
      if (!paramBoolean) {
        localb.a(paramGHSCreateOrderReviewDataModel);
      }
      return 2;
    }
    return -1;
  }
  
  private int a(String paramString, boolean paramBoolean)
  {
    if (f.b(paramString))
    {
      boolean bool = false;
      if (GHSApplication.m()) {
        bool = a().c(paramString);
      }
      if (bool)
      {
        if (paramBoolean) {
          b().d(paramString);
        }
        return 1;
      }
      if (!paramBoolean) {
        b().c(paramString);
      }
      return 2;
    }
    return -1;
  }
  
  public static Intent a(Context paramContext)
  {
    return a(paramContext, GHSReviewService.class);
  }
  
  public static Intent a(Context paramContext, GHSCreateOrderReviewDataModel paramGHSCreateOrderReviewDataModel)
  {
    paramContext = a(paramContext, GHSReviewService.class);
    paramContext.putExtra("order_review", paramGHSCreateOrderReviewDataModel);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString)
  {
    paramContext = a(paramContext, GHSReviewService.class);
    paramContext.putExtra("quit_order_id", paramString);
    return paramContext;
  }
  
  private void a(String paramString, int paramInt)
  {
    Intent localIntent = a("com.grubhub.service.GHSReviewService.BROADCAST");
    localIntent.putExtra("com.grubhub.service.GHSReviewService.ORDER_ID", paramString);
    localIntent.putExtra("com.grubhub.service.GHSReviewService.STATUS_CODE", paramInt);
    c().a(localIntent);
  }
  
  private boolean a(GHSCreateOrderReviewDataModel paramGHSCreateOrderReviewDataModel)
  {
    return (paramGHSCreateOrderReviewDataModel != null) && (f.b(paramGHSCreateOrderReviewDataModel.getOrderId())) && (f.b(paramGHSCreateOrderReviewDataModel.getVersion())) && (f.b(paramGHSCreateOrderReviewDataModel.getRestaurantId())) && (paramGHSCreateOrderReviewDataModel.getInteraction() != null) && (paramGHSCreateOrderReviewDataModel.getLocation() != null) && (f.b(paramGHSCreateOrderReviewDataModel.getPlatform())) && (paramGHSCreateOrderReviewDataModel.getAnswers() != null);
  }
  
  private void d()
  {
    b localb = b();
    Object localObject = localb.ab();
    if (localObject != null)
    {
      localObject = d.a(((GHSIPastOrderListDataModel)localObject).getPastOrders(), null);
      localObject = a().a((ArrayList)localObject);
      if (localObject != null) {
        localb.c((ArrayList)localObject);
      }
    }
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    Object localObject = (GHSCreateOrderReviewDataModel)paramIntent.getParcelableExtra("order_review");
    paramIntent = paramIntent.getStringExtra("quit_order_id");
    int i;
    if (localObject != null)
    {
      i = a((GHSCreateOrderReviewDataModel)localObject, false);
      if (i == 1) {
        d();
      }
      a(((GHSCreateOrderReviewDataModel)localObject).getOrderId(), i);
    }
    do
    {
      return;
      if (paramIntent == null) {
        break;
      }
    } while (a(paramIntent, false) != 1);
    d();
    return;
    paramIntent = b();
    localObject = paramIntent.h();
    label110:
    int j;
    if ((localObject != null) && (!((HashMap)localObject).isEmpty()))
    {
      localObject = ((HashMap)localObject).values().iterator();
      i = 0;
      j = i;
      if (!((Iterator)localObject).hasNext()) {
        break label159;
      }
      j = a((GHSCreateOrderReviewDataModel)((Iterator)localObject).next(), true);
      if (i != 0) {
        break label242;
      }
      if (j == 1) {
        i = 1;
      }
    }
    label159:
    label242:
    for (;;)
    {
      break label110;
      i = 0;
      continue;
      j = 0;
      paramIntent = paramIntent.j();
      i = j;
      if (paramIntent != null)
      {
        i = j;
        if (!paramIntent.isEmpty())
        {
          paramIntent = paramIntent.iterator();
          do
          {
            i = j;
            if (!paramIntent.hasNext()) {
              break;
            }
            i = a((String)paramIntent.next(), true);
          } while (j != 0);
          if (i == 1) {}
          for (i = 1;; i = 0)
          {
            j = i;
            break;
          }
        }
      }
      if (i == 0) {
        break;
      }
      d();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.services.GHSReviewService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */