package com.grubhub.AppBaseLibrary.android.account;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RadioButton;
import java.util.List;

class o
  extends BaseAdapter
{
  private List<p> b;
  private String c;
  
  public o(List<p> paramList, String paramString)
  {
    b = paramString;
    String str;
    c = str;
  }
  
  public p a(int paramInt)
  {
    return (p)b.get(paramInt);
  }
  
  public void a(String paramString)
  {
    c = paramString;
  }
  
  public void a(List<p> paramList)
  {
    b = paramList;
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
    Context localContext = paramViewGroup.getContext();
    Object localObject;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(localContext).inflate(2130903196, paramViewGroup, false);
      localObject = (RadioButton)paramView.findViewById(2131690241);
      if (!GHSSavedPaymentListFragment.c(a)) {
        break label136;
      }
      ((RadioButton)localObject).setVisibility(0);
    }
    for (;;)
    {
      localObject = paramView.findViewById(2131690165);
      ((View)localObject).setOnTouchListener(new q(a, a(paramInt)));
      ((View)localObject).setOnLongClickListener(new View.OnLongClickListener()
      {
        public boolean onLongClick(View paramAnonymousView)
        {
          if (GHSSavedPaymentListFragment.d(a)) {
            return false;
          }
          paramAnonymousView.setTranslationX(GHSSavedPaymentListFragment.e(a));
          return false;
        }
      });
      ((View)localObject).setTag(a(paramInt).a());
      return a(paramInt).a(localContext, paramInt, paramView, paramViewGroup);
      paramView.findViewById(2131690165).setTranslationX(0.0F);
      break;
      label136:
      ((RadioButton)localObject).setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */