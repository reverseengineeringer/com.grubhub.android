package com.grubhub.AppBaseLibrary.android.review;

import android.app.ActionBar;
import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.q;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel.GHSOrderReviewState;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.order.pastOrders.d;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class GHSReviewCompleteFragment
  extends Fragment
{
  private String a;
  private ArrayList<GHSIOrderReviewDataModel> b;
  private ArrayList<GHSIPastOrderDataModel> c;
  
  public static GHSReviewCompleteFragment a(String paramString)
  {
    GHSReviewCompleteFragment localGHSReviewCompleteFragment = new GHSReviewCompleteFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("order_id", paramString);
    localGHSReviewCompleteFragment.setArguments(localBundle);
    return localGHSReviewCompleteFragment;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    Object localObject2 = null;
    super.onCreate(paramBundle);
    a = getArguments().getString("order_id");
    Object localObject1 = GHSApplication.a().b();
    paramBundle = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject1).ab();
    if (paramBundle != null) {}
    for (paramBundle = paramBundle.getPastOrders();; paramBundle = null)
    {
      b = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject1).M();
      localObject1 = localObject2;
      if (b != null)
      {
        localObject1 = localObject2;
        if (!b.isEmpty())
        {
          localObject2 = new HashMap();
          Iterator localIterator = b.iterator();
          for (;;)
          {
            localObject1 = localObject2;
            if (!localIterator.hasNext()) {
              break;
            }
            localObject1 = (GHSIOrderReviewDataModel)localIterator.next();
            if ((localObject1 != null) && (f.b(((GHSIOrderReviewDataModel)localObject1).getOrderId()))) {
              ((HashMap)localObject2).put(((GHSIOrderReviewDataModel)localObject1).getOrderId(), localObject1);
            }
          }
        }
      }
      c = new ArrayList();
      if ((paramBundle != null) && (!paramBundle.isEmpty()) && (localObject1 != null) && (!((HashMap)localObject1).isEmpty()))
      {
        paramBundle = paramBundle.iterator();
        while (paramBundle.hasNext())
        {
          localObject2 = (GHSIPastOrderDataModel)paramBundle.next();
          if ((localObject2 != null) && (f.b(((GHSIPastOrderDataModel)localObject2).getOrderId())) && (!((GHSIPastOrderDataModel)localObject2).getOrderId().equals(a)) && (((HashMap)localObject1).get(((GHSIPastOrderDataModel)localObject2).getOrderId()) != null) && ((((GHSIOrderReviewDataModel)((HashMap)localObject1).get(((GHSIPastOrderDataModel)localObject2).getOrderId())).getState() == GHSIOrderReviewDataModel.GHSOrderReviewState.AVAILABLE) || (((GHSIOrderReviewDataModel)((HashMap)localObject1).get(((GHSIPastOrderDataModel)localObject2).getOrderId())).getState() == GHSIOrderReviewDataModel.GHSOrderReviewState.EXPIRED) || (((GHSIOrderReviewDataModel)((HashMap)localObject1).get(((GHSIPastOrderDataModel)localObject2).getOrderId())).getState() == GHSIOrderReviewDataModel.GHSOrderReviewState.QUIT))) {
            c.add(localObject2);
          }
        }
      }
      setHasOptionsMenu(true);
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramBundle = paramViewGroup.getContext();
    paramViewGroup = paramLayoutInflater.inflate(2130903148, paramViewGroup, false);
    ListView localListView = (ListView)paramViewGroup.findViewById(2131690047);
    paramLayoutInflater = paramLayoutInflater.inflate(2130903193, null);
    if (c.isEmpty()) {
      paramLayoutInflater.findViewById(2131690234).setVisibility(8);
    }
    localListView.addHeaderView(paramLayoutInflater);
    paramLayoutInflater = new com.grubhub.AppBaseLibrary.android.order.pastOrders.b(paramBundle, 2130903190, c);
    paramLayoutInflater.a(d.RATE_MORE);
    paramLayoutInflater.a(b);
    paramLayoutInflater.b(false);
    paramLayoutInflater.a(false);
    localListView.setAdapter(paramLayoutInflater);
    return paramViewGroup;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      getActivity().onBackPressed();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu = getActivity();
    ActionBar localActionBar = paramMenu.getActionBar();
    if (localActionBar != null) {
      localActionBar.setDisplayHomeAsUpEnabled(true);
    }
    if ((paramMenu instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)paramMenu).b(2131230863);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    h localh = h.a();
    if (c.isEmpty()) {}
    for (String str = "no more restaurants to rate";; str = "rate more restaurants")
    {
      localh.a(new c("submit ratings and reviews", "thanks for your feedback modal_impression", str, "true"));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.review.GHSReviewCompleteFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */