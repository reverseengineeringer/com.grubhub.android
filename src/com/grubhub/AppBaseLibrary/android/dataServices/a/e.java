package com.grubhub.AppBaseLibrary.android.dataServices.a;

import android.content.Context;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.ArrayList;
import java.util.Iterator;

public class e
  extends a<GHSIRestaurantAvailabilityDataModel>
{
  private ArrayList<String> b;
  private String c;
  private String d;
  
  public e(Context paramContext, String paramString1, String paramString2, String paramString3, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    paramContext = new ArrayList();
    paramContext.add(paramString1);
    a(paramContext, paramString2, paramString3);
  }
  
  public e(Context paramContext, ArrayList<String> paramArrayList, String paramString1, String paramString2, i parami1, i parami2)
  {
    super(paramContext, parami1, parami2);
    a(paramArrayList, paramString1, paramString2);
  }
  
  private void a(ArrayList<String> paramArrayList, String paramString1, String paramString2)
  {
    b = paramArrayList;
    c = paramString1;
    d = paramString2;
  }
  
  public void a()
  {
    super.a();
    b().a(b, c, d, this, this, f());
  }
  
  public void a(GHSIRestaurantAvailabilityDataModel paramGHSIRestaurantAvailabilityDataModel)
  {
    if (paramGHSIRestaurantAvailabilityDataModel != null)
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext())
      {
        GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary localGHSIRestaurantAvailabilitySummary = paramGHSIRestaurantAvailabilityDataModel.getSummary((String)localIterator.next());
        if ((localGHSIRestaurantAvailabilitySummary != null) && (f.b(localGHSIRestaurantAvailabilitySummary.getRestaurantName()))) {
          localArrayList.add(localGHSIRestaurantAvailabilitySummary);
        }
      }
      c().g(localArrayList);
    }
    super.onResponse(paramGHSIRestaurantAvailabilityDataModel);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */