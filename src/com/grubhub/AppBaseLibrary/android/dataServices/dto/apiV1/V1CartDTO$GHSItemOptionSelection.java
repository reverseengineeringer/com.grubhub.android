package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIItemOptionSelection;
import java.util.ArrayList;

public class V1CartDTO$GHSItemOptionSelection
  implements GHSICartDataModel.GHSIItemOptionSelection
{
  private String id;
  private String optionRefId;
  private ArrayList<GHSItemOptionSelection> subselection;
  
  public V1CartDTO$GHSItemOptionSelection(V1CartDTO paramV1CartDTO) {}
  
  public String getId()
  {
    return id;
  }
  
  public ArrayList<GHSICartDataModel.GHSIItemOptionSelection> getSubSelectionList()
  {
    if (subselection != null)
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.addAll(subselection);
      return localArrayList;
    }
    return null;
  }
  
  public String optionRefId()
  {
    return optionRefId;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1CartDTO.GHSItemOptionSelection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */