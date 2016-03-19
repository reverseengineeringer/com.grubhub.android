package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import java.util.Map;

public class GHSFilterFragmentsModel
{
  private Map<String, String> priceValueFragments;
  private Map<String, String> ratingsValueFragments;
  private Map<String, GHSFacetOption> singleValueRefinements;
  private Map<String, String> sortFragments;
  
  public Map<String, String> getPriceValueFragments()
  {
    return priceValueFragments;
  }
  
  public Map<String, String> getRatingsValueFragments()
  {
    return ratingsValueFragments;
  }
  
  public Map<String, GHSFacetOption> getSingleValueRefinements()
  {
    return singleValueRefinements;
  }
  
  public Map<String, String> getSortFragments()
  {
    return sortFragments;
  }
  
  public void setPriceValueFragments(Map<String, String> paramMap)
  {
    priceValueFragments = paramMap;
  }
  
  public void setRatingsValueFragments(Map<String, String> paramMap)
  {
    ratingsValueFragments = paramMap;
  }
  
  public void setSingleValueRefinements(Map<String, GHSFacetOption> paramMap)
  {
    singleValueRefinements = paramMap;
  }
  
  public void setSortFragments(Map<String, String> paramMap)
  {
    sortFragments = paramMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterFragmentsModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */