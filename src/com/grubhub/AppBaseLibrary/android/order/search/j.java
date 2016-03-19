package com.grubhub.AppBaseLibrary.android.order.search;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel.GHSIReview;
import com.grubhub.AppBaseLibrary.android.views.v;
import java.util.Iterator;
import java.util.List;

class j
  extends ArrayAdapter<GHSIReviewsDataModel.GHSIReview>
{
  public j(Context paramContext, int paramInt, List<GHSIReviewsDataModel.GHSIReview> paramList)
  {
    super(paramInt, paramList, localList);
  }
  
  public void a(List<GHSIReviewsDataModel.GHSIReview> paramList)
  {
    clear();
    b(paramList);
  }
  
  public void b(List<GHSIReviewsDataModel.GHSIReview> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      add((GHSIReviewsDataModel.GHSIReview)paramList.next());
    }
    notifyDataSetChanged();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = (v)paramView;
    paramView = paramViewGroup;
    if (paramViewGroup == null) {
      paramView = new v(getContext());
    }
    paramView.setContentExpanded(false);
    paramView.a((GHSIReviewsDataModel.GHSIReview)getItem(paramInt));
    return paramView;
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */