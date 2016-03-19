package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import java.util.ArrayList;
import java.util.Iterator;

public class GooglePlaceAutoCompleteDataModel
{
  private ArrayList<GooglePlaceAutoCompleteDataModel.Prediction> predictions;
  private String status;
  
  public ArrayList<String> getPredictionDescriptions()
  {
    ArrayList localArrayList = new ArrayList();
    if (predictions != null)
    {
      Iterator localIterator = predictions.iterator();
      while (localIterator.hasNext())
      {
        GooglePlaceAutoCompleteDataModel.Prediction localPrediction = (GooglePlaceAutoCompleteDataModel.Prediction)localIterator.next();
        if (localPrediction != null) {
          localArrayList.add(GooglePlaceAutoCompleteDataModel.Prediction.access$000(localPrediction));
        }
      }
    }
    return localArrayList;
  }
  
  public ArrayList<String> getPredictionPlaceIds()
  {
    ArrayList localArrayList = new ArrayList();
    if (predictions != null)
    {
      Iterator localIterator = predictions.iterator();
      while (localIterator.hasNext())
      {
        GooglePlaceAutoCompleteDataModel.Prediction localPrediction = (GooglePlaceAutoCompleteDataModel.Prediction)localIterator.next();
        if (localPrediction != null) {
          localArrayList.add(GooglePlaceAutoCompleteDataModel.Prediction.access$100(localPrediction));
        }
      }
    }
    return localArrayList;
  }
  
  public String getStatus()
  {
    return status;
  }
  
  public boolean hasZeroResults()
  {
    return (status != null) && (status.equals("ZERO_RESULTS"));
  }
  
  public boolean isStatusOk()
  {
    return (status != null) && (status.equals("OK"));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GooglePlaceAutoCompleteDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */