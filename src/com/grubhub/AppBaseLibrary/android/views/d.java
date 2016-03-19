package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import java.util.ArrayList;

class d
  extends BaseAdapter
{
  private ArrayList<GHSIAddressDataModel> a;
  
  private String a(GHSIAddressDataModel paramGHSIAddressDataModel, boolean paramBoolean)
  {
    Object localObject = "";
    if (paramGHSIAddressDataModel != null)
    {
      localObject = new StringBuilder();
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getAddress1())) {
        ((StringBuilder)localObject).append(paramGHSIAddressDataModel.getAddress1());
      }
      if ((paramBoolean) && (!TextUtils.isEmpty(paramGHSIAddressDataModel.getAddress2())))
      {
        if (((StringBuilder)localObject).length() > 0) {
          ((StringBuilder)localObject).append(", ");
        }
        ((StringBuilder)localObject).append(paramGHSIAddressDataModel.getAddress2());
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getCity()))
      {
        if (((StringBuilder)localObject).length() > 0) {
          ((StringBuilder)localObject).append(", ");
        }
        ((StringBuilder)localObject).append(paramGHSIAddressDataModel.getCity());
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getState()))
      {
        if (((StringBuilder)localObject).length() > 0) {
          ((StringBuilder)localObject).append(", ");
        }
        ((StringBuilder)localObject).append(paramGHSIAddressDataModel.getState());
      }
      if (!TextUtils.isEmpty(paramGHSIAddressDataModel.getZip()))
      {
        if (((StringBuilder)localObject).length() > 0) {
          ((StringBuilder)localObject).append(", ");
        }
        ((StringBuilder)localObject).append(paramGHSIAddressDataModel.getZip());
      }
      localObject = ((StringBuilder)localObject).toString();
    }
    return (String)localObject;
  }
  
  public GHSIAddressDataModel a(int paramInt)
  {
    return (GHSIAddressDataModel)a.get(paramInt);
  }
  
  public void a(ArrayList<GHSIAddressDataModel> paramArrayList)
  {
    a = paramArrayList;
    notifyDataSetChanged();
  }
  
  public int getCount()
  {
    if (a != null) {
      return a.size();
    }
    return 0;
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject1 = null;
    Object localObject2 = paramViewGroup.getContext();
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = LayoutInflater.from((Context)localObject2).inflate(2130903084, null);
    }
    localObject2 = a(paramInt);
    TextView localTextView = (TextView)paramViewGroup.findViewById(2131689658);
    paramView = (View)localObject1;
    if (!TextUtils.isEmpty(((GHSIAddressDataModel)localObject2).getLabel())) {
      paramView = ((GHSIAddressDataModel)localObject2).getLabel() + ": ";
    }
    localTextView.setText(paramView);
    ((TextView)paramViewGroup.findViewById(2131689659)).setText(a((GHSIAddressDataModel)localObject2, true));
    return paramViewGroup;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */