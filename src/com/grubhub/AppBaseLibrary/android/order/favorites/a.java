package com.grubhub.AppBaseLibrary.android.order.favorites;

import android.content.Context;
import android.support.v4.app.q;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

class a
  extends ArrayAdapter<GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary>
{
  public a(Context paramContext, int paramInt, ArrayList<GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary> paramArrayList)
  {
    super(paramInt, paramArrayList, localList);
  }
  
  private void a(RelativeLayout paramRelativeLayout, GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary paramGHSIRestaurantAvailabilitySummary)
  {
    Object localObject = paramGHSIRestaurantAvailabilitySummary.getRestaurantName();
    TextView localTextView = (TextView)paramRelativeLayout.findViewById(2131689951);
    if (f.b((String)localObject))
    {
      localTextView.setText((CharSequence)localObject);
      localTextView.setVisibility(0);
      localObject = paramGHSIRestaurantAvailabilitySummary.getAddress();
      localTextView = (TextView)paramRelativeLayout.findViewById(2131690191);
      if ((localObject == null) || (!f.b(((GHSIAddressDataModel)localObject).getAddress1())) || (!f.b(((GHSIAddressDataModel)localObject).getCity())) || (!f.b(((GHSIAddressDataModel)localObject).getState())) || (!f.b(((GHSIAddressDataModel)localObject).getZip()))) {
        break label276;
      }
      localTextView.setText(String.format("%s %s, %s %s", new Object[] { ((GHSIAddressDataModel)localObject).getAddress1(), ((GHSIAddressDataModel)localObject).getCity(), ((GHSIAddressDataModel)localObject).getState(), ((GHSIAddressDataModel)localObject).getZip() }));
      localTextView.setVisibility(0);
      label163:
      localObject = paramGHSIRestaurantAvailabilitySummary.getDistanceInMiles();
      localTextView = (TextView)paramRelativeLayout.findViewById(2131690192);
      if (!f.b((String)localObject)) {
        break label286;
      }
      localTextView.setText(String.format("%s %s", new Object[] { localObject, a.getString(2131231618) }));
      localTextView.setVisibility(0);
    }
    for (;;)
    {
      paramGHSIRestaurantAvailabilitySummary = Boolean.valueOf(paramGHSIRestaurantAvailabilitySummary.isOpen());
      paramRelativeLayout = (TextView)paramRelativeLayout.findViewById(2131690193);
      if ((paramGHSIRestaurantAvailabilitySummary == null) || (paramGHSIRestaurantAvailabilitySummary.booleanValue())) {
        break label296;
      }
      paramRelativeLayout.setVisibility(0);
      return;
      if (localTextView == null) {
        break;
      }
      localTextView.setVisibility(8);
      break;
      label276:
      localTextView.setVisibility(8);
      break label163;
      label286:
      localTextView.setVisibility(8);
    }
    label296:
    paramRelativeLayout.setVisibility(8);
  }
  
  public void a(ArrayList<GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary> paramArrayList)
  {
    clear();
    b(paramArrayList);
  }
  
  public void b(ArrayList<GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary> paramArrayList)
  {
    Collections.sort(paramArrayList, new Comparator()
    {
      public int a(GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary paramAnonymousGHSIRestaurantAvailabilitySummary1, GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary paramAnonymousGHSIRestaurantAvailabilitySummary2)
      {
        if (((paramAnonymousGHSIRestaurantAvailabilitySummary1 == null) || (paramAnonymousGHSIRestaurantAvailabilitySummary1.getRestaurantName() == null)) && (paramAnonymousGHSIRestaurantAvailabilitySummary2 != null) && (paramAnonymousGHSIRestaurantAvailabilitySummary2.getRestaurantName() != null)) {
          return -1;
        }
        if (((paramAnonymousGHSIRestaurantAvailabilitySummary1 == null) || (paramAnonymousGHSIRestaurantAvailabilitySummary1.getRestaurantName() == null)) && ((paramAnonymousGHSIRestaurantAvailabilitySummary2 == null) || (paramAnonymousGHSIRestaurantAvailabilitySummary2.getRestaurantName() == null))) {
          return 0;
        }
        if ((paramAnonymousGHSIRestaurantAvailabilitySummary1 != null) && (paramAnonymousGHSIRestaurantAvailabilitySummary1.getRestaurantName() != null) && ((paramAnonymousGHSIRestaurantAvailabilitySummary2 == null) || (paramAnonymousGHSIRestaurantAvailabilitySummary2.getRestaurantName() == null))) {
          return 1;
        }
        return paramAnonymousGHSIRestaurantAvailabilitySummary1.getRestaurantName().compareToIgnoreCase(paramAnonymousGHSIRestaurantAvailabilitySummary2.getRestaurantName());
      }
    });
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary localGHSIRestaurantAvailabilitySummary = (GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary)paramArrayList.next();
      if ((localGHSIRestaurantAvailabilitySummary != null) && (f.b(localGHSIRestaurantAvailabilitySummary.getRestaurantId()))) {
        add(localGHSIRestaurantAvailabilitySummary);
      }
    }
    notifyDataSetChanged();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)paramView;
    paramView = localRelativeLayout;
    if (localRelativeLayout == null) {
      paramView = (RelativeLayout)a.getActivity().getLayoutInflater().inflate(2130903177, paramViewGroup, false);
    }
    a(paramView, (GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary)getItem(paramInt));
    return paramView;
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.favorites.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */