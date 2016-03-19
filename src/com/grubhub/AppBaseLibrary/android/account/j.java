package com.grubhub.AppBaseLibrary.android.account;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RadioButton;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import java.util.ArrayList;

public class j
  extends BaseAdapter
{
  private ArrayList<GHSIAddressDataModel> b;
  private String c;
  
  public j(ArrayList<GHSIAddressDataModel> paramArrayList, String paramString)
  {
    b = paramString;
    String str;
    c = str;
  }
  
  public GHSIAddressDataModel a(int paramInt)
  {
    return (GHSIAddressDataModel)b.get(paramInt);
  }
  
  public void a(String paramString)
  {
    c = paramString;
  }
  
  public void a(ArrayList<GHSIAddressDataModel> paramArrayList)
  {
    b = paramArrayList;
    notifyDataSetChanged();
  }
  
  public int getCount()
  {
    if (b != null) {
      return b.size();
    }
    return 0;
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject1 = paramViewGroup.getContext();
    RadioButton localRadioButton;
    label71:
    Object localObject2;
    Object localObject3;
    if (paramView == null)
    {
      paramView = LayoutInflater.from((Context)localObject1).inflate(2130903194, paramViewGroup, false);
      paramViewGroup = (TextView)paramView.findViewById(2131690237);
      localObject1 = (TextView)paramView.findViewById(2131690238);
      localRadioButton = (RadioButton)paramView.findViewById(2131690236);
      if (!GHSSavedAddressListFragment.d(a)) {
        break label300;
      }
      localRadioButton.setVisibility(0);
      localObject2 = paramView.findViewById(2131690164);
      View localView = paramView.findViewById(2131690163);
      localObject3 = paramView.findViewById(2131690165);
      ((View)localObject3).setOnTouchListener(a.i);
      ((View)localObject3).setOnLongClickListener(new View.OnLongClickListener()
      {
        public boolean onLongClick(View paramAnonymousView)
        {
          if (GHSSavedAddressListFragment.m(a)) {
            return false;
          }
          paramAnonymousView.setTranslationX(GHSSavedAddressListFragment.c(a));
          return true;
        }
      });
      ((View)localObject3).setTag(Integer.valueOf(paramInt));
      localObject3 = a(paramInt);
      if (localObject3 != null)
      {
        ((View)localObject2).setOnClickListener(new g(a, ((GHSIAddressDataModel)localObject3).getId(), paramInt));
        localView.setOnClickListener(new h(a, paramInt));
        com.grubhub.AppBaseLibrary.android.utils.g.a((TextView)localObject1, (GHSIAddressDataModel)localObject3);
        localObject2 = ((GHSIAddressDataModel)localObject3).getLabel();
        if (!TextUtils.isEmpty((CharSequence)localObject2)) {
          break label310;
        }
        paramViewGroup.setVisibility(8);
      }
    }
    for (;;)
    {
      if ((!GHSSavedAddressListFragment.d(a)) || (c == null) || (!c.equals(((GHSIAddressDataModel)localObject3).getId()))) {
        break label324;
      }
      ((TextView)localObject1).setTextColor(a.getResources().getColor(2131558463));
      paramViewGroup.setTextColor(a.getResources().getColor(2131558463));
      localRadioButton.setChecked(true);
      return paramView;
      paramView.findViewById(2131690165).setTranslationX(0.0F);
      break;
      label300:
      localRadioButton.setVisibility(8);
      break label71;
      label310:
      paramViewGroup.setVisibility(0);
      paramViewGroup.setText((CharSequence)localObject2);
    }
    label324:
    ((TextView)localObject1).setTextColor(a.getResources().getColor(2131558484));
    paramViewGroup.setTextColor(a.getResources().getColor(2131558484));
    localRadioButton.setChecked(false);
    return paramView;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */