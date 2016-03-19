package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class GHSSearchAutoCompleteDataModel
  implements GHSIAutoCompleteDataModel
{
  private List<GHSSearchAutoCompleteDataModel.AutoResult> result_list;
  
  public ArrayList<GHSSearchAutoValueDataModel> getAutoCompleteResults()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = result_list.iterator();
    while (localIterator1.hasNext())
    {
      Iterator localIterator2 = GHSSearchAutoCompleteDataModel.AutoResult.access$000((GHSSearchAutoCompleteDataModel.AutoResult)localIterator1.next()).iterator();
      while (localIterator2.hasNext())
      {
        GHSSearchAutoValueDataModel localGHSSearchAutoValueDataModel = (GHSSearchAutoValueDataModel)localIterator2.next();
        if (f.b(localGHSSearchAutoValueDataModel.getValue())) {
          localArrayList.add(localGHSSearchAutoValueDataModel);
        }
      }
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSearchAutoCompleteDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */