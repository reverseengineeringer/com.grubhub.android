package com.grubhub.AppBaseLibrary.android.order.pastOrders;

import android.content.Context;
import android.support.v4.app.q;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.RelativeLayout;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel.GHSIPastOrderItem;
import com.grubhub.AppBaseLibrary.android.views.GHSTextView;
import java.util.List;

class i
  extends ArrayAdapter<GHSIPastOrderDataModel.GHSIPastOrderItem>
{
  private i(Context paramContext, int paramInt, List<GHSIPastOrderDataModel.GHSIPastOrderItem> paramList)
  {
    super(paramInt, paramList, localList);
  }
  
  public GHSIPastOrderDataModel.GHSIPastOrderItem a(int paramInt)
  {
    return (GHSIPastOrderDataModel.GHSIPastOrderItem)super.getItem(paramInt);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject = null;
    if ((paramView != null) && ((paramView instanceof RelativeLayout))) {}
    for (paramView = (RelativeLayout)paramView;; paramView = (RelativeLayout)a.getActivity().getLayoutInflater().inflate(2130903191, null))
    {
      ((GHSTextView)paramView.findViewById(2131690231)).setText(a(paramInt).getItemName());
      Float localFloat = a(paramInt).getItemPrice();
      Integer localInteger = a(paramInt).getItemQuantity();
      paramViewGroup = (ViewGroup)localObject;
      if (localFloat != null)
      {
        paramViewGroup = (ViewGroup)localObject;
        if (localInteger != null) {
          paramViewGroup = String.format(GHSApplication.a().getString(2131231830), new Object[] { Float.valueOf(localFloat.floatValue() * localInteger.intValue()) });
        }
      }
      ((GHSTextView)paramView.findViewById(2131690230)).setText(paramViewGroup);
      return paramView;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.pastOrders.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */