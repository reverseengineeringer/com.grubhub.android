package com.grubhub.AppBaseLibrary.android.order;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.q;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1OrderStatusDTO.OrderEvent;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderStatus;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class b
  extends ArrayAdapter<c>
{
  public b(Context paramContext, int paramInt, List<c> paramList)
  {
    super(paramInt, paramList, localList);
  }
  
  private void a(LinearLayout paramLinearLayout, final GHSIPastOrderDataModel paramGHSIPastOrderDataModel, final GHSIOrderStatus paramGHSIOrderStatus)
  {
    LinearLayout localLinearLayout = (LinearLayout)paramLinearLayout.findViewById(2131690212);
    Object localObject = (ImageView)paramLinearLayout.findViewById(2131689928);
    if ((GHSApplication.a().b().d()) && (paramGHSIOrderStatus.getOrderEvents().size() > 1) && (GHSOrderStatusFragment.a(a, paramGHSIPastOrderDataModel)))
    {
      localLinearLayout.setVisibility(0);
      localLinearLayout.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          paramAnonymousView = paramGHSIPastOrderDataModel.getOrderNumber();
          if (GHSOrderStatusFragment.e(a) != null) {
            GHSOrderStatusFragment.e(a).d(paramAnonymousView);
          }
          h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("order status tracking", "order status tracking_cta", "real-time order tracking"));
        }
      });
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("order status tracking", "order status tracking_impression", "real-time order tracking", "true"));
      ((ImageView)localObject).setVisibility(0);
    }
    for (;;)
    {
      localLinearLayout = (LinearLayout)paramLinearLayout.findViewById(2131690214);
      localLinearLayout.removeAllViews();
      localObject = paramGHSIOrderStatus.getOrderEvents().iterator();
      while (((Iterator)localObject).hasNext())
      {
        V1OrderStatusDTO.OrderEvent localOrderEvent = (V1OrderStatusDTO.OrderEvent)((Iterator)localObject).next();
        View localView = a.getActivity().getLayoutInflater().inflate(2130903189, localLinearLayout, false);
        ((TextView)localView.findViewById(2131690218)).setText(localOrderEvent.getOrderEventTime());
        ((TextView)localView.findViewById(2131690219)).setText(localOrderEvent.getOrderEventHeadline());
        ((TextView)localView.findViewById(2131690220)).setText(localOrderEvent.getOrderEventDetails());
        localLinearLayout.addView(localView);
      }
      localLinearLayout.setVisibility(8);
      ((ImageView)localObject).setVisibility(8);
    }
    ((TextView)paramLinearLayout.findViewById(2131690216)).setText(paramGHSIOrderStatus.getRestaurantName());
    paramLinearLayout.findViewById(2131690215).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSOrderStatusFragment.a(a, paramGHSIPastOrderDataModel, paramGHSIOrderStatus);
      }
    });
    paramLinearLayout = (TextView)paramLinearLayout.findViewById(2131690217);
    paramGHSIPastOrderDataModel = paramGHSIOrderStatus.getRestaurantPhone();
    if (!TextUtils.isEmpty(paramGHSIPastOrderDataModel))
    {
      paramLinearLayout.setText(String.format(a.getString(2131231879), new Object[] { PhoneNumberUtils.formatNumber(paramGHSIPastOrderDataModel) }));
      paramLinearLayout.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (GHSApplication.n())
          {
            paramAnonymousView = "tel: " + paramGHSIPastOrderDataModel;
            Intent localIntent = new Intent("android.intent.action.DIAL");
            localIntent.setData(Uri.parse(paramAnonymousView));
            a.startActivity(localIntent);
            b.a(b.this, "call restaurant");
            return;
          }
          com.grubhub.AppBaseLibrary.android.c.a(a.getActivity(), 2131231322, 2131231321, 0, 0, 2131231717, null);
        }
      });
      return;
    }
    paramLinearLayout.setText(2131231880);
    paramLinearLayout.setEnabled(false);
  }
  
  private void a(String paramString)
  {
    if ((paramString == "call care") || (paramString == "call restaurant")) {
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("exit links", "completed orders", paramString));
    }
  }
  
  public void a(List<c> paramList)
  {
    clear();
    addAll(paramList);
    notifyDataSetChanged();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    LinearLayout localLinearLayout = (LinearLayout)paramView;
    paramView = localLinearLayout;
    if (localLinearLayout == null) {
      paramView = (LinearLayout)a.getActivity().getLayoutInflater().inflate(2130903188, paramViewGroup, false);
    }
    paramViewGroup = (c)getItem(paramInt);
    a(paramView, a, b);
    return paramView;
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */