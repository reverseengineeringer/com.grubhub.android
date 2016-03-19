package com.grubhub.AppBaseLibrary.android.order.search;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RadioButton;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponListDataModel.GHSICouponDataModel;
import java.util.ArrayList;
import java.util.Iterator;

class a
  extends BaseAdapter
{
  private ArrayList<GHSICouponListDataModel.GHSICouponDataModel> b = new ArrayList();
  private ArrayList<GHSICouponListDataModel.GHSICouponDataModel> c = new ArrayList();
  
  private a(GHSCouponFragment paramGHSCouponFragment) {}
  
  public GHSICouponListDataModel.GHSICouponDataModel a(int paramInt)
  {
    Object localObject2 = null;
    Object localObject1;
    int i;
    int j;
    if (getItemViewType(paramInt) != b.AVAILABLE.ordinal())
    {
      localObject1 = localObject2;
      if (getItemViewType(paramInt) != b.NOT_AVAILABLE_YET.ordinal()) {}
    }
    else
    {
      i = b.size();
      j = c.size();
      if ((i <= 0) || (paramInt - 1 >= i)) {
        break label80;
      }
      localObject1 = (GHSICouponListDataModel.GHSICouponDataModel)b.get(paramInt - 1);
    }
    label80:
    do
    {
      do
      {
        return (GHSICouponListDataModel.GHSICouponDataModel)localObject1;
        if ((i == 0) && (paramInt - 2 - 1 < j)) {
          return (GHSICouponListDataModel.GHSICouponDataModel)c.get(paramInt - 2 - 1);
        }
        localObject1 = localObject2;
      } while (i <= 0);
      localObject1 = localObject2;
    } while (paramInt - i - 2 >= j);
    return (GHSICouponListDataModel.GHSICouponDataModel)c.get(paramInt - i - 2);
  }
  
  public void a(ArrayList<GHSICouponListDataModel.GHSICouponDataModel> paramArrayList)
  {
    Object localObject;
    Float localFloat;
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      localObject = GHSApplication.a().b().X();
      if ((localObject == null) || (((GHSICartDataModel)localObject).getRestaurantId() == null) || (!((GHSICartDataModel)localObject).getRestaurantId().equals(GHSCouponFragment.c(a)))) {
        break label275;
      }
      localFloat = ((GHSICartDataModel)localObject).getSubtotal();
      localObject = ((GHSICartDataModel)localObject).getCoupon();
      if ((localObject == null) || (((GHSICouponDataModel)localObject).getAmount() == null)) {
        break label272;
      }
      localFloat = Float.valueOf(localFloat.floatValue() + Math.abs(((GHSICouponDataModel)localObject).getAmount().floatValue()));
    }
    for (;;)
    {
      b.clear();
      c.clear();
      localObject = GHSApplication.a().b().u();
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        GHSICouponListDataModel.GHSICouponDataModel localGHSICouponDataModel = (GHSICouponListDataModel.GHSICouponDataModel)localIterator.next();
        if (localGHSICouponDataModel != null)
        {
          if (localGHSICouponDataModel.getMinimum() != null) {}
          for (paramArrayList = Float.valueOf(localGHSICouponDataModel.getMinimum());; paramArrayList = null)
          {
            if ((localFloat == null) || (paramArrayList == null) || (localFloat.floatValue() < paramArrayList.floatValue())) {
              break label254;
            }
            b.add(localGHSICouponDataModel);
            if ((localObject == null) || (!((String)localObject).equals(localGHSICouponDataModel.getId()))) {
              break;
            }
            GHSCouponFragment.a(a, localGHSICouponDataModel.getId());
            break;
          }
          label254:
          c.add(localGHSICouponDataModel);
        }
      }
      notifyDataSetChanged();
      return;
      label272:
      continue;
      label275:
      localFloat = null;
    }
  }
  
  public boolean areAllItemsEnabled()
  {
    return false;
  }
  
  public int getCount()
  {
    if (b.size() > 0) {}
    for (int i = 0 + b.size();; i = 1)
    {
      int j = i;
      if (c.size() > 0) {
        j = i + c.size();
      }
      return j + 2;
    }
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public int getItemViewType(int paramInt)
  {
    if ((paramInt == 0) || ((b.size() > 0) && (paramInt == b.size() + 1)) || ((b.size() == 0) && (paramInt == 2))) {
      return b.CATEGORY.ordinal();
    }
    if ((b.size() == 0) && (paramInt == 1)) {
      return b.AVAILABLE_DESCRIPTION.ordinal();
    }
    if ((b.size() > 0) && (paramInt < b.size() + 1)) {
      return b.AVAILABLE.ordinal();
    }
    return b.NOT_AVAILABLE_YET.ordinal();
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    GHSICouponListDataModel.GHSICouponDataModel localGHSICouponDataModel2 = null;
    GHSICouponListDataModel.GHSICouponDataModel localGHSICouponDataModel1 = null;
    Object localObject = paramViewGroup.getContext();
    int i = getItemViewType(paramInt);
    if (i == b.CATEGORY.ordinal())
    {
      paramViewGroup = paramView;
      if (paramView == null) {
        paramViewGroup = LayoutInflater.from((Context)localObject).inflate(2130903174, null, false);
      }
      paramView = (TextView)paramViewGroup.findViewById(2131690186);
      if (paramInt == 0)
      {
        i = 2131231000;
        paramInt = 2131231093;
        paramView.setText(i);
        paramView.setContentDescription(((Context)localObject).getString(paramInt));
        paramViewGroup.setTag(Integer.valueOf(i));
      }
    }
    label137:
    do
    {
      do
      {
        return paramViewGroup;
        i = 2131231002;
        paramInt = 2131231094;
        break;
        if (i != b.AVAILABLE_DESCRIPTION.ordinal()) {
          break label137;
        }
        paramViewGroup = paramView;
      } while (paramView != null);
      return LayoutInflater.from((Context)localObject).inflate(2130903173, null, false);
      if (i == b.AVAILABLE.ordinal())
      {
        paramViewGroup = paramView;
        if (paramView == null) {
          paramViewGroup = LayoutInflater.from((Context)localObject).inflate(2130903172, null, false);
        }
        localGHSICouponDataModel2 = a(paramInt);
        localObject = (TextView)paramViewGroup.findViewById(2131690185);
        RadioButton localRadioButton = (RadioButton)paramViewGroup.findViewById(2131690184);
        if ((localGHSICouponDataModel2 != null) && (!TextUtils.isEmpty(localGHSICouponDataModel2.getId())))
        {
          boolean bool = localGHSICouponDataModel2.getId().equals(GHSCouponFragment.d(a));
          paramView = localGHSICouponDataModel1;
          if (localGHSICouponDataModel2.getDescription() != null) {
            paramView = localGHSICouponDataModel2.getDescription().trim();
          }
          ((TextView)localObject).setText(paramView);
          ((TextView)localObject).setSelected(bool);
          localRadioButton.setChecked(bool);
          paramViewGroup.setTag(localGHSICouponDataModel2.getId());
          return paramViewGroup;
        }
        ((TextView)localObject).setText(null);
        localRadioButton.setChecked(false);
        paramViewGroup.setTag(null);
        return paramViewGroup;
      }
      paramViewGroup = paramView;
    } while (i != b.NOT_AVAILABLE_YET.ordinal());
    paramViewGroup = paramView;
    if (paramView == null) {
      paramViewGroup = LayoutInflater.from((Context)localObject).inflate(2130903175, null, false);
    }
    localGHSICouponDataModel1 = a(paramInt);
    localObject = (TextView)paramViewGroup.findViewById(2131690185);
    if ((localGHSICouponDataModel1 != null) && (!TextUtils.isEmpty(localGHSICouponDataModel1.getId())))
    {
      paramView = localGHSICouponDataModel2;
      if (localGHSICouponDataModel1.getDescription() != null) {
        paramView = localGHSICouponDataModel1.getDescription().trim();
      }
      ((TextView)localObject).setText(paramView);
      paramViewGroup.setTag(localGHSICouponDataModel1.getId());
      return paramViewGroup;
    }
    ((TextView)localObject).setText(null);
    paramViewGroup.setTag(null);
    return paramViewGroup;
  }
  
  public int getViewTypeCount()
  {
    return b.values().length;
  }
  
  public boolean isEnabled(int paramInt)
  {
    return getItemViewType(paramInt) == b.AVAILABLE.ordinal();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */