package com.grubhub.AppBaseLibrary.android.order.pastOrders;

import android.content.Context;
import android.content.res.TypedArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSInteractionType;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSLocationType;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel.GHSOrderReviewState;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.review.GHSReviewActivity;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.utils.f;
import com.grubhub.AppBaseLibrary.android.views.GHSRatingStarView;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class b
  extends ArrayAdapter<GHSIPastOrderDataModel>
{
  private HashMap<String, GHSIOrderReviewDataModel> a;
  private d b;
  private c c;
  private boolean d;
  private boolean e;
  private int f;
  
  public b(Context paramContext, int paramInt, List<GHSIPastOrderDataModel> paramList)
  {
    super(paramContext, paramInt, paramList);
    paramContext = paramContext.obtainStyledAttributes(new int[] { 16843534 });
    f = paramContext.getResourceId(0, 0);
    paramContext.recycle();
  }
  
  public void a(c paramc)
  {
    c = paramc;
  }
  
  public void a(d paramd)
  {
    b = paramd;
  }
  
  public void a(List<GHSIOrderReviewDataModel> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      a = null;
    }
    for (;;)
    {
      notifyDataSetChanged();
      return;
      a = new HashMap();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        GHSIOrderReviewDataModel localGHSIOrderReviewDataModel = (GHSIOrderReviewDataModel)paramList.next();
        if ((localGHSIOrderReviewDataModel != null) && (f.b(localGHSIOrderReviewDataModel.getOrderId()))) {
          a.put(localGHSIOrderReviewDataModel.getOrderId(), localGHSIOrderReviewDataModel);
        }
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public void b(List<GHSIPastOrderDataModel> paramList)
  {
    clear();
    c(paramList);
  }
  
  public void b(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  public void c(List<GHSIPastOrderDataModel> paramList)
  {
    addAll(paramList);
    notifyDataSetChanged();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject2 = paramViewGroup.getContext();
    Object localObject1 = null;
    if (paramView == null)
    {
      paramView = LayoutInflater.from((Context)localObject2).inflate(2130903190, paramViewGroup, false);
      paramViewGroup = (ViewGroup)localObject1;
      if (paramViewGroup != null) {
        break label850;
      }
      paramViewGroup = new e((TextView)paramView.findViewById(2131689951), (TextView)paramView.findViewById(2131690223), (TextView)paramView.findViewById(2131690224), (TextView)paramView.findViewById(2131690225), paramView.findViewById(2131690226), (GHSRatingStarView)paramView.findViewById(2131690227), (TextView)paramView.findViewById(2131690228), (Button)paramView.findViewById(2131690229), null);
      paramView.setTag(paramViewGroup);
    }
    label189:
    label249:
    label282:
    label385:
    label392:
    label403:
    label423:
    label838:
    label850:
    for (;;)
    {
      final GHSIPastOrderDataModel localGHSIPastOrderDataModel = (GHSIPastOrderDataModel)getItem(paramInt);
      if (localGHSIPastOrderDataModel != null)
      {
        g localg = localGHSIPastOrderDataModel.getOrderType();
        localObject1 = ((Context)localObject2).getString(2131231745);
        localObject2 = ((Context)localObject2).getString(2131231748);
        e.a(paramViewGroup).setText(localGHSIPastOrderDataModel.getRestaurantName());
        TextView localTextView = e.b(paramViewGroup);
        if (!g.DELIVERY.equals(localg)) {
          break label385;
        }
        localTextView.setText((CharSequence)localObject1);
        if (!f.b(localGHSIPastOrderDataModel.getRestaurantId())) {
          break label392;
        }
        e.c(paramViewGroup).setText(" - " + localGHSIPastOrderDataModel.getTimePlacedString());
        e.c(paramViewGroup).setVisibility(0);
        localObject1 = localGHSIPastOrderDataModel.getFoodItemsCommaSeparated();
        if ((d) && (!f.a((String)localObject1))) {
          break label403;
        }
        e.d(paramViewGroup).setVisibility(8);
        localObject1 = localGHSIPastOrderDataModel.getOrderId();
        if ((a != null) && (!a.isEmpty()) && (a.get(localObject1) != null)) {
          break label423;
        }
        e.e(paramViewGroup).setVisibility(8);
        e.f(paramViewGroup).setVisibility(8);
      }
      for (;;)
      {
        if ((!e) || (localGHSIPastOrderDataModel == null)) {
          break label838;
        }
        paramView.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            if (b.b(b.this) != null) {
              b.b(b.this).a(localGHSIPastOrderDataModel);
            }
          }
        });
        paramView.setBackgroundResource(f);
        return paramView;
        paramViewGroup = (e)paramView.getTag();
        break;
        localObject1 = localObject2;
        break label189;
        e.c(paramViewGroup).setVisibility(4);
        break label249;
        e.d(paramViewGroup).setVisibility(0);
        e.d(paramViewGroup).setText((CharSequence)localObject1);
        break label282;
        localObject2 = (GHSIOrderReviewDataModel)a.get(localObject1);
        if (localObject2 != null)
        {
          localObject1 = ((GHSIOrderReviewDataModel)localObject2).getState();
          if ((localObject1 == GHSIOrderReviewDataModel.GHSOrderReviewState.AVAILABLE) || (localObject1 == GHSIOrderReviewDataModel.GHSOrderReviewState.EXPIRED) || (localObject1 == GHSIOrderReviewDataModel.GHSOrderReviewState.QUIT))
          {
            e.e(paramViewGroup).setVisibility(8);
            e.g(paramViewGroup).setRatings(0);
            e.f(paramViewGroup).setVisibility(0);
            e.f(paramViewGroup).setOnClickListener(new View.OnClickListener()
            {
              public void onClick(View paramAnonymousView)
              {
                paramAnonymousView = paramAnonymousView.getContext();
                paramAnonymousView.startActivity(GHSReviewActivity.a(paramAnonymousView, localGHSIPastOrderDataModel.getOrderId(), localGHSIPastOrderDataModel.getRestaurantId(), localGHSIPastOrderDataModel.getRestaurantName(), localGHSIPastOrderDataModel.getOrderType(), GHSCreateOrderReviewDataModel.GHSInteractionType.USER_INITIATED_MODAL, GHSCreateOrderReviewDataModel.GHSLocationType.ORDER_HISTORY));
                if (b.a(b.this) == d.RATE_MORE)
                {
                  h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("submit ratings and reviews", "rate more restaurants modal-rate_cta", ""));
                  return;
                }
                h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("submit ratings and reviews", "submit ratings prompt-rate_cta", "order history_link"));
              }
            });
          }
          else if (localObject1 == GHSIOrderReviewDataModel.GHSOrderReviewState.UNAVAILABLE)
          {
            e.e(paramViewGroup).setVisibility(8);
            e.f(paramViewGroup).setVisibility(8);
            e.f(paramViewGroup).setOnClickListener(null);
            e.g(paramViewGroup).setRatings(0);
            e.g(paramViewGroup).setVisibility(8);
            e.h(paramViewGroup).setText(null);
            e.h(paramViewGroup).setVisibility(8);
          }
          else
          {
            e.f(paramViewGroup).setVisibility(8);
            e.f(paramViewGroup).setOnClickListener(null);
            localObject2 = ((GHSIOrderReviewDataModel)localObject2).getRating();
            if (localObject2 != null)
            {
              e.e(paramViewGroup).setVisibility(0);
              e.g(paramViewGroup).setRatings(((Integer)localObject2).intValue());
              e.g(paramViewGroup).setVisibility(0);
              e.h(paramViewGroup).setText(null);
              e.h(paramViewGroup).setVisibility(8);
            }
            else if (f.b(GHSIOrderReviewDataModel.GHSOrderReviewState.getString((GHSIOrderReviewDataModel.GHSOrderReviewState)localObject1)))
            {
              e.e(paramViewGroup).setVisibility(0);
              e.g(paramViewGroup).setRatings(0);
              e.g(paramViewGroup).setVisibility(8);
              e.h(paramViewGroup).setText(GHSIOrderReviewDataModel.GHSOrderReviewState.getString((GHSIOrderReviewDataModel.GHSOrderReviewState)localObject1));
              e.h(paramViewGroup).setVisibility(0);
            }
            else
            {
              e.e(paramViewGroup).setVisibility(8);
              e.g(paramViewGroup).setRatings(0);
              e.g(paramViewGroup).setVisibility(8);
              e.h(paramViewGroup).setText(null);
              e.h(paramViewGroup).setVisibility(8);
            }
          }
        }
        else
        {
          e.e(paramViewGroup).setVisibility(8);
          e.f(paramViewGroup).setVisibility(8);
          e.f(paramViewGroup).setOnClickListener(null);
          e.g(paramViewGroup).setRatings(0);
          e.g(paramViewGroup).setVisibility(8);
          e.h(paramViewGroup).setText(null);
          e.h(paramViewGroup).setVisibility(8);
        }
      }
      paramView.setOnClickListener(null);
      paramView.setBackgroundResource(0);
      return paramView;
    }
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.pastOrders.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */