package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import java.util.List;

public class GHSSearchAutoCompleteDataModel$AutoResult
{
  List<GHSSearchAutoValueDataModel> completion_list;
  int count;
  String result_type;
  
  public GHSSearchAutoCompleteDataModel$AutoResult(GHSSearchAutoCompleteDataModel paramGHSSearchAutoCompleteDataModel) {}
  
  private List<GHSSearchAutoValueDataModel> getCompletionList()
  {
    return completion_list;
  }
  
  public String getResultType()
  {
    return result_type;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSearchAutoCompleteDataModel.AutoResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */